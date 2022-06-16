package data.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import data.mapper.ThemeParkMapperInter;

@Controller
public class ThemeParkController {
	
	@Autowired
	ThemeParkMapperInter mapper;
	
	//이용기
	@GetMapping("/themePark/themePark")
	public String themePark() {
		
		return "/themePark/themePark";
	}
	
	
	@GetMapping("/html/themeParkDetail")
	public String themeParkDetail() {
		
		return "/html/themeParkDetail";
	}
	
	
	@GetMapping("/html/festivalDetail")
	public String festivalDetail() {
		
		return "/html/festivalDetail";
	}
	
	
	@GetMapping("/html/festival")
	public String festival() {
		
		return "/html/festival";
	}
	
	
	
	
	
	
	@GetMapping("/html/festivalCalendar")
	public String festivalCalendar() {
		
		return "/html/festivalCalendar";
	}

}	
