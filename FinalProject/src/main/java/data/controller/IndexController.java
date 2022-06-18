package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	
	//용기		
	@GetMapping("/html/myPageEdit")
	public String myPageEdit() {
		
		return "/html/myPageEdit";
	}
	
	
	@GetMapping("/html/myPageScrap")
	public String myPageScrap() {
		
		return "/html/myPageScrap";
	}
	
	
	@GetMapping("/html/modalCalendar")
	public String modalCalendar() {
		
		return "/html/modalCalendar";
	}

	//다솔

	@GetMapping("/html/myTripResult")
	public String myTripResult() {
		
		return "/html/myTripResult";
	}
	
	@GetMapping("/html/myTripStart")
	public String myTripStart() {
		
		return "/html/myTripStart";
	}
	
	@GetMapping("/html/myTripTest")
	public String myTripTest() {
		
		return "/html/myTripTest";
	}
	
	
	//강진
	
	
//태민	
	
	@GetMapping("/html/loginEmail")
	public String loginEmail() {
		
		return "/html/loginEmail";
	}	
	
	@GetMapping("/html/loginEmailCheck")
	public String loginEmailCheck() {
		
		return "/html/loginEmailCheck";
	}	
	
	@GetMapping("/html/loginEnd")
	public String loginEnd() {
		
		return "/html/loginEnd";
	}	
	
	@GetMapping("/html/loginInfo")
	public String loginInfo() {
		
		return "/html/loginInfo";
	}	
	
	@GetMapping("/html/loginJoin")
	public String loginJoin() {
		
		return "/html/loginJoin";
	}	
	
}
