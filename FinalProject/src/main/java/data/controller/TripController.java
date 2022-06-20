package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.TripDto;
import data.mapper.TripMapperInter;
import data.service.TripService;

@Controller
public class TripController {
	
	@Autowired
	TripMapperInter tripMapper;
	
	@Autowired
	TripService tservice;
	
	@GetMapping("/myTripDetail")
	public ModelAndView myTripDetail(@RequestParam("tnum") String tnum) {
		
		ModelAndView mview=new ModelAndView();
		//조회수 증가
		tripMapper.updateReadCount(tnum);
		TripDto tdto=tripMapper.getData(tnum);
		
		mview.addObject("tdto",tdto);
		mview.setViewName("/html/myTripDetail");

		return mview;
	}
	
	//베스트여행지 페이지
	@GetMapping("bestTrip")
	public ModelAndView bestTrip(@RequestParam(value = "currentPage",defaultValue = "1") int currentPage) {
			
		ModelAndView mview=new ModelAndView();
		int totalCount=30;
		
		//페이징처리에 필요한 변수
		int totalPage; //총 페이지수
		int startPage; //각블럭의 시작페이지
		int endPage; //각블럭의 끝페이지
		int start; //각페이지의 시작번호
		int perpage=9; //한페이지에 보여질 글 갯수
		int perBlock=3; //한블럭당 보여지는 페이지 개수


		//총페이지 개수구하기
		totalPage=totalCount/perpage+(totalCount%perpage==0?0:1);

		//각블럭의 시작페이지
		//예:현재페이지가 3인경우 startpage=1,endpage= 5
		//현재페이지가 6인경우 startpage=6,endpage= 10
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;

		//만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
		if(endPage>totalPage)
		   endPage=totalPage;

		//각페이지에서 불러올 시작번호 
		start=(currentPage-1)*perpage;

		//각페이지에서 필요한 게시글 가져오기
		List<TripDto> list=tservice.getList(start,perpage);
		
		//각 글앞에 붙일 시작번호 구하기
		//총글이 20개면? 1페이지 20 2페이지 15부터 출력해서 1씩 감소
		int no=totalCount-(currentPage-1)*perpage;
		
		//출력에 필요한 변수들을 request에 저장
		mview.addObject("list",list); //댓글개수 포함후 전달
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("totalPage",totalPage);
		mview.addObject("no",no);
		mview.addObject("totalCount",totalCount);
		
		mview.setViewName("/html/bestTrip");
		
		return mview;
	}
	
	//테마별여행지 페이지
	//이용기
	@GetMapping("/myTrip/themeParkList")
	public ModelAndView themeParkList() {
		
		ModelAndView model=new ModelAndView();
		
		List<TripDto> list=tservice.getAllList();
		
		model.addObject("list", list);
				
		model.setViewName("/myTrip/themeParkList");
		
		return model;
	}
	
	//이용기
	@GetMapping("/festival/festivalList")
	public String festival() {
		
		return "/festival/festivalList";
	}
	
	
	//지역별여행지 페이지
	@GetMapping("regionTrip")
	public ModelAndView regionTrip(@RequestParam(value = "currentPage",defaultValue = "1") int currentPage) {
		
		ModelAndView mview=new ModelAndView();
		int totalCount=tripMapper.getTotalCount();
		
		//페이징처리에 필요한 변수
		int totalPage; //총 페이지수
		int startPage; //각블럭의 시작페이지
		int endPage; //각블럭의 끝페이지
		int start; //각페이지의 시작번호
		int perpage=9; //한페이지에 보여질 글 갯수
		int perBlock=3; //한블럭당 보여지는 페이지 개수


		//총페이지 개수구하기
		totalPage=totalCount/perpage+(totalCount%perpage==0?0:1);

		//각블럭의 시작페이지
		//예:현재페이지가 3인경우 startpage=1,endpage= 5
		//현재페이지가 6인경우 startpage=6,endpage= 10
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;

		//만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
		if(endPage>totalPage)
		   endPage=totalPage;

		//각페이지에서 불러올 시작번호 
		start=(currentPage-1)*perpage;

		//각페이지에서 필요한 게시글 가져오기
		List<TripDto> regionlist=tservice.regionList(start,perpage);
		
		//각 글앞에 붙일 시작번호 구하기
		//총글이 20개면? 1페이지 20 2페이지 15부터 출력해서 1씩 감소
		int no=totalCount-(currentPage-1)*perpage;
		
		//출력에 필요한 변수들을 request에 저장
		mview.addObject("regionlist",regionlist); //댓글개수 포함후 전달
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("totalPage",totalPage);
		mview.addObject("no",no);
		mview.addObject("totalCount",totalCount);
		
		mview.setViewName("/html/regionTrip");
		
		return mview;
	}
		
}
