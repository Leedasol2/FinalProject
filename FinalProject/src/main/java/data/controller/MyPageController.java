package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

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
import data.dto.ScrapDto;
import data.service.MemberService;
import data.service.ScrapService;
import data.service.TripService;

@Controller
public class MyPageController {
	
	@Autowired
	MemberService service;
	
	@Autowired
	ScrapService scservice;
	
	@Autowired
	TripService tservice;
	
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
	
	
	//정보수정
	@PostMapping("/mypage/updateedit")
	public String updateedit(@ModelAttribute MemberDto dto){
									
			service.updateMember(dto);
			return "redirect:/mypage/myPageEditSuccess";
	}		
	
	@GetMapping("/mypage/myPageEditSuccess")
	public String myPageEditSuccess() {
			
		return "/mypage/myPageEditSuccess";
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
	public ModelAndView myPageScrap(HttpSession session) {
		
		ModelAndView model=new ModelAndView();
		
		String myid=(String)session.getAttribute("myid");
		String mnum=service.getMnum(myid);
		
		int totalCount=scservice.getScrapCount(mnum);
		
		List<ScrapDto> list=scservice.getList(mnum);
		
		for(ScrapDto d:list) {
			String tnum=d.getTnum();
			String image=tservice.getData(tnum).getImage();
			String []iName=image.split(",");
			
			//첫번째 사진으로 이미지 설정
			d.setImage(iName[0]);
			
			d.setTitle(tservice.getData(tnum).getTitle());
			d.setPart(tservice.getData(tnum).getPart());
			
		}
		
		
		model.addObject("list", list);
		model.addObject("totalCount", totalCount);
		model.setViewName("/mypage/myPageScrap");
		
		
		return model;
	}	
	
}
	
