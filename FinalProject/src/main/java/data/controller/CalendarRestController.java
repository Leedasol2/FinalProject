package data.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import data.dto.CalendarDto;
import data.service.CalendarService;
import data.service.MemberService;

@RestController
public class CalendarRestController {

	@Autowired
	CalendarService service;
	@Autowired
	MemberService memService;
	
	/*@GetMapping("/mypage/ScheList")
	public ModelAndView list(@RequestParam(value = "mnum", required = false) String mnum,
			HttpSession session) {
		
		ModelAndView mview=new ModelAndView();
		String myid=(String)session.getAttribute("myid");
		mnum=memService.getMnum(myid);
		
		List<CalendarDto> list=service.getScheList(mnum);
		
		mview.addObject("list",list);
		mview.addObject("mnum",mnum);
		mview.addObject("myid",myid);
		mview.setViewName("/mypage/myPageCalendar");
		
		System.out.println(list);
		return mview;
	}*/
	
	@GetMapping("/mypage/ScheList")
	public List<CalendarDto> list(@RequestParam(value = "mnum", required = false) String mnum,
			HttpSession session)
	{
		//List<CalendarDto> list=new ArrayList<CalendarDto>();
		
		String myid=(String)session.getAttribute("myid");
		mnum=memService.getMnum(myid);
		
		return service.getScheList(mnum);
	}
}
