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
	
	//용기
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

	//다솔

	@GetMapping("/html/bestBoard")
	public String bestBoard() {
		
		return "/html/bestBoard";
	}
	
	@GetMapping("/html/bulletinBoard")
	public String bulletinBoard() {
		
		return "/html/bulletinBoard";
	}
	
	
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
	
	
	@GetMapping("/html/shareTripHome")
	public String shareTripHome() {
		
		return "/html/shareTripHome";
	}
	
	
	@GetMapping("/html/mytripdetail")
	public String mytripdetail() {
		
		return "/html/myTripDetail";
	}
	
	@GetMapping("/html/festivaldetail")
	public String festivaldetail() {
		
		return "/html/festivalDetail";
	}
	
	@GetMapping("/html/themeparkdetail")
	public String themeparkdetail() {
		
		return "/html/themeParkDetail";
	}
	
	
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
	
	@GetMapping("/html/loginHome")
	public String loginHome() {
		
		return "/html/loginHome";
	}	
	
	@GetMapping("/html/loginInfo")
	public String loginInfo() {
		
		return "/html/loginInfo";
	}	
	
	@GetMapping("/html/loginJoin")
	public String loginJoin() {
		
		return "/html/loginJoin";
	}	
	
	@GetMapping("/html/loginMissId")
	public String loginMissId() {
		
		return "/html/loginMissId";
	}	
	@GetMapping("/html/loginMissPass")
	public String loginMissPass() {
		
		return "/html/loginMissPass";
	}	
	
	
	
	
	
	
}
