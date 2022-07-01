package data.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.CalendarDto;
import data.service.CalendarService;
import data.service.MemberService;

@Controller
public class CalendarController {
	
	@Autowired
	CalendarService service;
	@Autowired
	MemberService memService;
	
	@GetMapping("/mypage/myPageCalendar")
	public String myPageCalendar() {
		
		return "/mypage/myPageCalendar";
	}
	
	
	//insert
	@PostMapping("/mypage/ScheInsert")
	@ResponseBody
	public String insert(@RequestBody CalendarDto dto, HttpSession session)
	{
		String myid=(String)session.getAttribute("myid");
		String mnum=memService.getMnum(myid);
		dto.setMnum(mnum);
		
		service.insertSchedule(dto);
		
		return "true";
	}
	
	
	//delete
	@PostMapping("/mypage/ScheDelete")
	public String delete(@RequestParam String schenum)
	{
		service.deleteSchedule(schenum);
		return "true";
	}
	
	@PostMapping("/mypage/ScheGet")
	@ResponseBody
	public CalendarDto ScheGet(@RequestBody String schenum)
	{
		return service.getSchedule(schenum);
	}

	//update
	@PostMapping("/mypage/ScheUpdate")
	@ResponseBody
	public void updateSchedule(@RequestBody CalendarDto dto)
	{
		service.updateSchedule(dto);
	}
	

}
