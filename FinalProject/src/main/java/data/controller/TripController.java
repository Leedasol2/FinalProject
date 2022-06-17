package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TripController {

	@GetMapping("/myTripDetail")
	public String myTripDetail() {
		
		return "/html/myTripDetail";
	}
	
	//베스트여행지 페이지
	@GetMapping("bestTrip")
	public String bestTrip() {
			
	return "/html/bestTrip";
	}
	
	//테마별여행지 페이지
	@GetMapping("themaTrip")
	public String themaTrip() {
			
		return "/html/themaTrip";
	}
	
	//지역별여행지 페이지
	@GetMapping("regionTrip")
	public String regionTrip() {
			
	return "/html/regionTrip";
	}
		
}
