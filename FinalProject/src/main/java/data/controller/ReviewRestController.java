package data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import data.dto.DetailReviewDto;
import data.mapper.DetailReviewMapper;
import data.service.MemberService;
import data.service.ReviewService;

@ComponentScan
@RestController
public class ReviewRestController {

	@Autowired
	DetailReviewMapper mapper;
	
	@Autowired
	ReviewService rService;
	
	@Autowired
	MemberService memService;
	
	@GetMapping("/myTripDetail/rlist")
	public List<DetailReviewDto> reviewlist(String tnum)
	{
		List<DetailReviewDto> list=mapper.getList(tnum);
		for(DetailReviewDto d:list)
		{
			String userid=memService.getUserId(d.getMnum());
			d.setUserid(userid);
		}
		return list;
	}
	
	@GetMapping("/themeParkDetail/rlist")
	public List<DetailReviewDto> reviewthemelist(String tnum)
	{
		List<DetailReviewDto> list=mapper.getList(tnum);
		for(DetailReviewDto d:list)
		{
			//System.out.println(d.getMnum());
			String userid=memService.getUserId(d.getMnum());
			d.setUserid(userid);
			//System.out.println(userid);
		}
		return list;
	}
	
	@PostMapping("/myTripDetail/rinsert")
	public void reveiwinsert(@ModelAttribute DetailReviewDto dto,
			HttpSession session)
	{
		//세션에 로그인한 아이디
		String userid=(String)session.getAttribute("myid");
		String mnum=(String)memService.getMnum(userid);
		dto.setMnum(mnum);
		dto.setUserid(userid);
		
		//insert
		mapper.insertDetailReview(dto);
	}
	
	@PostMapping("/themeParkDetail/rinsert")
	public void reveiwthemeinsert(@ModelAttribute DetailReviewDto dto,
			HttpSession session)
	{
		//세션에 로그인한 아이디
		String userid=(String)session.getAttribute("myid");
		String mnum=(String)memService.getMnum(userid);
		dto.setMnum(mnum);
		dto.setUserid(userid);
		
		//insert
		mapper.insertDetailReview(dto);
	}
	
	
	
	@GetMapping("/myTripDetail/rdelete")
	public void reviewdelete(String rnum)
	{
		mapper.deleteDetailReview(rnum);
	}
	
	
	@GetMapping("/themeParkDetail/rdelete")
	public void reviewthemedelete(String rnum)
	{
		mapper.deleteDetailReview(rnum);
	}
	
	@GetMapping("/myTripDetail/rdata")
	public DetailReviewDto reviewdata(String rnum)
	{
		return mapper.getReview(rnum);
	}
	
	@GetMapping("/themeParkDetail/rdata")
	public DetailReviewDto reviewthemedata(String rnum)
	{
		return mapper.getReview(rnum);
	}
	
	@PostMapping("/myTripDetail/rupdate")
	public void reviewupdate(@ModelAttribute DetailReviewDto dto)
	{
		mapper.updateDetailReview(dto);
	}
	
	@PostMapping("/themeParkDetail/rupdate")
	public void reviewthemeupdate(@ModelAttribute DetailReviewDto dto)
	{
		mapper.updateDetailReview(dto);
	}
}
