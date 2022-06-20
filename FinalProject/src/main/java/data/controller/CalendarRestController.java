package data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import data.dto.CalendarDto;
import data.service.CalendarService;
import data.service.MemberService;

@RestController
public class CalendarRestController {

	@Autowired
	CalendarService service;
	@Autowired
	MemberService memService;
	
	
	@GetMapping("/mypage/ScheList")
	public List<CalendarDto> list(@RequestParam(value = "mnum", required = false) String mnum,
			HttpSession session)
	{
		
		String myid=(String)session.getAttribute("myid");
		mnum=memService.getMnum(myid);
		
		return service.getScheList(mnum);
	}
}
