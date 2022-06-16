package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TripController {

	@GetMapping("/html/myTripDetail")
	public String myTripDetail() {
		
		return "/html/myTripDetail";
	}
}
