package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@GetMapping("/")
	public String home() {
		
		return "/layout/main";
	}
	
	@GetMapping("/html/festival")
	public String festival() {
		
		return "/html/festival";
	}
	
	@GetMapping("/html/festivalCalendar")
	public String festivalCalendar() {
		
		return "/html/festivalCalendar";
	}
	
	@GetMapping("/html/myPageEdit")
	public String myPageEdit() {
		
		return "/html/myPageEdit";
	}
	
	@GetMapping("/html/myPageReview")
	public String myPageReview() {
		
		return "/html/myPageReview";
	}
	
	@GetMapping("/html/myPageScrap")
	public String myPageScrap() {
		
		return "/html/myPageScrap";
	}
	
	@GetMapping("/html/myPageCalendar")
	public String myPageCalendar() {
		
		return "/html/myPageCalendar";
	}
	
	@GetMapping("/html/themePark")
	public String themePark() {
		
		return "/html/themePark";
	}
	
	@GetMapping("/html/modalCalendar")
	public String modalCalendar() {
		
		return "/html/modalCalendar";
	}
	
	
	
	
	
}
