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
		
		return "/board/html/bestBoard";
	}
	
	@GetMapping("/html/bulletinBoard")
	public String bulletinBoard() {
		
		return "/board/html/bulletinBoard";
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
		
		return "/board/html/shareTripHome";
	}
	
	
	//강진
	
	@GetMapping("/html/myTripDetail")
	public String myTripDetail() {
		
		return "/html/myTripDetail";
	}
	
	@GetMapping("/html/festivalDetail")
	public String festivalDetail() {
		
		return "/html/festivalDetail";
	}
	
	@GetMapping("/html/themeParkDetail")
	public String themeParkDetail() {
		
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
	
	//동현
	
	@GetMapping("/html/themaTrip")
	public String themaTrip() {
		
		return "/html/themaTrip";
	}

	@GetMapping("/html/bestTrip")
	public String bestTrip() {
		
		return "/html/bestTrip";
	}

	@GetMapping("/html/regionTrip")
	public String regionTrip() {
		
		return "/html/regionTrip";
	}

	@GetMapping("/html/boardDetailPage")
	public String boardDetailPage() {
		
		return "/html/boardDetailPage";
	}

	@GetMapping("/html/boardupdateform")
	public String boardupdateform() {
		
		return "/html/boardupdateform";
	}

	@GetMapping("/html/boardwriteform")
	public String boardwriteform() {
		
		return "/html/boardwriteform";
	}
	
	
	
	
	
	
}
