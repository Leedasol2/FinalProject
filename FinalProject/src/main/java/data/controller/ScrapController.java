package data.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.ScrapDto;
import data.mapper.MemberMapperInter;
import data.mapper.ScrapMapperInter;
import data.service.ScrapService;


@Controller
public class ScrapController {
	
	@Autowired
	ScrapService service;
	
	@Autowired
	MemberMapperInter mmapper;

	@PostMapping("/scrap/scrapInsert")
	@ResponseBody
	public boolean scrapInsert(@ModelAttribute ScrapDto sdto,HttpSession session,
			@RequestBody Map<String, String> vo) {
		
		String loginok = (String) session.getAttribute("loginok");
		boolean result=false;
		if (loginok != null) {
		
			//세션에 로그인한 아이디
			String myid=(String)session.getAttribute("myid");
			String mnum=mmapper.getMnum(myid);
			
			String tnum=vo.get("tnum");
			sdto.setMnum(mnum);
			sdto.setTnum(tnum);
			
			System.out.println(mnum+","+tnum);
			
			service.InsertScrap(sdto);
			result=true;
		}
		return result;
	}
	@PostMapping("/scrap/scrapDelete")
	@ResponseBody
	public boolean scrapDelete(HttpSession session,
			@RequestBody Map<String, String> vo) {
		
		String loginok = (String) session.getAttribute("loginok");
		boolean result=false;
		if (loginok != null) {
		
			//세션에 로그인한 아이디
			String myid=(String)session.getAttribute("myid");
			String mnum=mmapper.getMnum(myid);
			String tnum=vo.get("tnum");
			
			
			System.out.println(mnum+","+tnum);
			
			String snum = service.getSnum(mnum,tnum);
			
			System.out.println(snum);
			service.deleteScrap(snum);
			result=true;
		}
		return result;
	}

	
	
	
	
	
	
}