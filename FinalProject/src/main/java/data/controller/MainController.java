package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import data.mapper.BoardMapperInter;
import data.service.BoardService;
import data.service.TripService;

@Controller
public class MainController {

	@Autowired
	BoardService bservice;
	
	@Autowired
	TripService tservice;
	
	@GetMapping("/")
	public String home() {
		
	
		
		return "/layout/main";
	}
}
