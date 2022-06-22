package data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyTripController {

@GetMapping("/myTrip/myTripResult")
public String myTripResult() {
	
	return "/myTrip/myTripResult";
}

@GetMapping("/myTrip/myTripStart")
public String myTripStart() {
	
	return "/myTrip/myTripStart";
}

@GetMapping("/myTrip/myTripTest")
public String myTripTest() {
	
	return "/myTrip/myTripTest";
}

}