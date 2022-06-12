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
	
	
	
	
	
}
