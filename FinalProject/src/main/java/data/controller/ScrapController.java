package data.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.dto.ScrapDto;
import data.mapper.MemberMapperInter;
import data.mapper.ScrapMapperInter;
import data.service.ScrapService;


@Controller
public class ScrapController {
	
	@Autowired
	ScrapMapperInter smapper;
	
	@Autowired
	MemberMapperInter mmapper;

	@PostMapping("/scrapInsert")
	public void scrapInsert(@ModelAttribute ScrapDto sdto,HttpSession session,
			@RequestParam(value =  "tnum",required = false) String tnum) {
		
		String loginok = (String) session.getAttribute("loginok");
		
		if (loginok != null) {
		
		//세션에 로그인한 아이디
		String myid=(String)session.getAttribute("myid");
		String mnum=mmapper.getMnum(myid);
		sdto.setMnum(mnum);
		sdto.setTnum(tnum);
//		System.out.println(mnum);
//		System.out.println(tnum);
		
		HashMap<String, String> map = new HashMap<>();
		map.put("mnum", mnum);
		map.put("tnum", tnum);
		
		int check=smapper.getFindScrap(map);
		String snum = smapper.getSnum(map);
		
		if(check ==1) {
		smapper.deleteScrap(snum);
			
		}else {
		//insert
		smapper.InsertScrap(sdto);
		}
	}

}

}