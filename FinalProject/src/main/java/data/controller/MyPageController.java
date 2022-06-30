package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MemberDto;
import data.service.MemberService;

@Controller
public class MyPageController {
	
	@Autowired
	MemberService service;
	
	
	
	//업데이트 폼
	@GetMapping("/mypage/myPageEdit")
	public ModelAndView myPageEdit(
			HttpSession session, Model model
			) {	
		

		String myid=(String)session.getAttribute("myid");
		String mnum = service.getMnum(myid);
		ModelAndView mview = new ModelAndView();
		MemberDto dto = service.getData(mnum);
		
		mview.addObject("dto",dto);
		mview.setViewName("/mypage/myPageEdit");
		
		return mview;
	}
	
	
	//패스워드 확인
	@PostMapping("/mypage/updateedit")
	public String updateedit(@ModelAttribute MemberDto dto,							
			@RequestParam String password,
			@RequestParam String passcheck){
			
		
		if(password != passcheck){
			
			return "redirect:/mypage/myPageEditFalse";
		}
		
		else {
									
			service.updateMember(dto);
			return "redirect:/mypage/myPageEdit";
	}
	}		
	
	@GetMapping("/mypage/myPageEditFalse")
	public ModelAndView myPageEditFalse(
			HttpSession session, Model model) {	
			
		String myid=(String)session.getAttribute("myid");
		String mnum = service.getMnum(myid);
		ModelAndView mview = new ModelAndView();
		MemberDto dto = service.getData(mnum);
			
		mview.addObject("dto",dto);
		mview.setViewName("/mypage/myPageEditFalse");
			
		return mview;
	}
	
	
	//삭제
	@GetMapping("/mypage/deleteedit")
	public String deleteedit(HttpSession session, Model model) {

		String myid=(String)session.getAttribute("myid");
		String mnum = service.getMnum(myid);
		
		service.deleteMember(mnum);
		session.removeAttribute("loginok");
		
		return "/";
	}
	
	@GetMapping("/mypage/myPageScrap")
	public String myPageScrap() {
		
		return "/mypage/myPageScrap";
	}	
	
}
	
