package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.BoardDto;
import data.dto.TripDto;
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
	public String home(Model model) {
		
		String part="'themepark'";
		
		List<TripDto> triplist=tservice.getAllTrips();
		List<TripDto> themeparklist=tservice.getAllThemeParks(part);
		List<BoardDto> boardlist=bservice.getAllBoards();
		
		model.addAttribute("triplist",triplist);
		model.addAttribute("boardlist",boardlist);
		model.addAttribute("themeparklist",themeparklist);
		
		return "/layout/main";
	}
}
