package data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import data.dto.CommentsDto;
import data.service.CommentsService;
import data.service.MemberService;

@Controller
public class CommentsController {
	
	@Autowired
	CommentsService service;
	
	@Autowired
	MemberService memservice;
	
	@PostMapping("/comments/insert")
	public String insertComments(@ModelAttribute CommentsDto dto,
			HttpSession session,
			int currentPage) {
		
		
		dto.setMnum(memservice.getMnum((String)session.getAttribute("myid")));
		
		
		service.insertOfComments(dto);
		
		return "redirect:../board/detail?bnum="+dto.getBnum()+"&currentPage="+currentPage;
	}
	
	
	
}
