package data.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.ReviewDto;
import data.dto.TripDto;
import data.mapper.ReviewMapperInter;
import data.mapper.TripMapperInter;
import data.service.ReviewService;
import data.service.TripService;


@Controller
@RequestMapping("/myTrip")

public class TripController {
	
	@Autowired
	TripMapperInter tripMapper;
	
	@Autowired
	TripService tservice;
	
	@Autowired
	ReviewMapperInter reviewMapper;
	
	@Autowired
	ReviewService rservice;
	
	@GetMapping("/myTripDetail")
	public ModelAndView myTripDetail(@RequestParam("tnum") String tnum) {
		
		ModelAndView mview=new ModelAndView();
		//조회수 증가
		tripMapper.updateReadCount(tnum);
		TripDto tdto=tripMapper.getData(tnum);
		
		if(rservice.getReviewcount(tnum)>0) {
			double avgrstar=rservice.getAvgrstar(tnum);
			int reviewcount=rservice.getReviewcount(tnum);
			tdto.setAvgrstar(avgrstar);
			tdto.setReviewcount(reviewcount);
		}else {
			double avgrstar=0;
			tdto.setAvgrstar(avgrstar);
		}
		mview.addObject("tdto",tdto);
		mview.setViewName("/trip/myTripDetail");
		return mview;
	}
	
	//베스트여행지 페이지
	@GetMapping("/bestTrip")
	public ModelAndView bestTrip(@RequestParam(value = "currentPage",defaultValue = "1") int currentPage,@RequestParam(value =  "tnum",required = false) String tnum) {
			
		ModelAndView mview=new ModelAndView();
		
		List<TripDto> list=tservice.getList();
//		List<TripDto> bestlist=tservice.getBestList(tnum);
		
		TripDto tdto=new TripDto();
		for(TripDto t:list) {
			if(rservice.getReviewcount(t.getTnum())>0) {
				double avgrstar=rservice.getAvgrstar(t.getTnum());
				int reviewcount=rservice.getReviewcount(t.getTnum());
				t.setAvgrstar(avgrstar);
				t.setReviewcount(reviewcount);
			}else {
				double avgrstar=0;
				int reviewcount=0;
				t.setAvgrstar(avgrstar);
				t.setReviewcount(reviewcount);
			}
		}
		list.add(tdto);
		
		//출력에 필요한 변수들을 request에 저장
		mview.addObject("list",list); //댓글개수 포함후 전달
		mview.addObject("tdto",tdto);
		
//		mview.addObject("bestlist",bestlist);
		
		mview.setViewName("/trip/bestTrip");
		
		return mview;
	}
	
	@GetMapping("/regionTrip")
	public String regionTrip(Model model,@RequestParam(value =  "tnum",required = false) String tnum) {
		
		String CurrentRegion="서울";
		
		List<TripDto> regionList=tservice.getRegionList(CurrentRegion);
//		List<TripDto> orderReadCount=tservice.getReadCountList();
//		List<TripDto> orderReview=tservice.getReviewList();
//		List<TripDto> orderHighRstar=tservice.getHighRstarList();
//		List<TripDto> orderLowRstar=tservice.getLowRstarList();
		
		model.addAttribute("regionList",regionList);
//		model.addAttribute("orderReadCount",orderReadCount);
//		model.addAttribute("orderReview",orderReview);
//		model.addAttribute("orderHighRstar",orderHighRstar);
//		model.addAttribute("orderLowRstar",orderLowRstar);
		
		TripDto tdto=new TripDto();
		for(TripDto r:regionList) {
			if(rservice.getReviewcount(r.getTnum())>0) {
				double avgrstar=rservice.getAvgrstar(r.getTnum());
				int reviewcount=rservice.getReviewcount(r.getTnum());
				r.setAvgrstar(avgrstar);
				r.setReviewcount(reviewcount);
			}else {
				double avgrstar=0;
				int reviewcount=0;
				r.setAvgrstar(avgrstar);
				r.setReviewcount(reviewcount);
			}
		}
		
		regionList.add(tdto);
		model.addAttribute("tdto",tdto);
		model.addAttribute("regionList",regionList);
		return "/trip/regionTrip";
	}
	
	@PostMapping("/RegionChange")
	public String RegionChange(@RequestParam String CurrentRegion ,Model model) {
		
		List<TripDto> regionList=tservice.getRegionList(CurrentRegion);
				
		model.addAttribute("regionList",regionList);
		
		return "/trip/regionTrip";
	}
		
	//테마별여행지 페이지
	@GetMapping("/themaTrip")
	public String themaTrip(Model model,@RequestParam(value =  "tnum",required = false) String tnum) {
		
		String CurrentTheme="바다";
		
		List<TripDto> themeList=tservice.getThemeList(CurrentTheme);
		
		TripDto tdto=new TripDto();
		for(TripDto r:themeList) {
			if(rservice.getReviewcount(r.getTnum())>0) {
				double avgrstar=rservice.getAvgrstar(r.getTnum());
				int reviewcount=rservice.getReviewcount(r.getTnum());
				r.setAvgrstar(avgrstar);
				r.setReviewcount(reviewcount);
			}else {
				double avgrstar=0;
				int reviewcount=0;
				r.setAvgrstar(avgrstar);
				r.setReviewcount(reviewcount);
			}
		}
		themeList.add(tdto);
		model.addAttribute("themeList",themeList);
		model.addAttribute("tdto",tdto);
				
		return "/trip/themaTrip";
	}
		
	@PostMapping("/ThemeChange")
	public String ThemeChange(@RequestParam String CurrentTheme,Model model) {
		
		List<TripDto> themeList=tservice.getThemeList(CurrentTheme);
		
		model.addAttribute("themeList",themeList);
		
		return "/trip/themaTrip";
	}
	
	//이용기
		@GetMapping("/themeParkList")
		public String themeParkList(Model model) {
			
			
			//String CurrentRegion="서울";
			String themepark="'themepark'";
			
			List<TripDto> themeparklist=tservice.getAllActivitys(themepark);
			
			System.out.println(themeparklist);
			
			model.addAttribute("themeparklist",themeparklist);
					
			
			return "/myTrip/themeParkList";
		}
		
		
		@PostMapping("/themeChange")
		public String themeChange(@RequestParam String CurrentRegion,  Model model) {
						
			String themepark="themepark";
			
			List<TripDto> themeparklist=tservice.getRegionThemeList(themepark, CurrentRegion);
						
			System.out.println(themeparklist);
			
			model.addAttribute("themeparklist", themeparklist);						
						
			return "/myTrip/themeParkList";
		}
		
		
		//이용기
		@GetMapping("/festivalList")
		public String festivalList(Model model) {
				
			String festival="'festival'";
					
			List<TripDto> festivallist=tservice.getAllActivitys(festival);
				
			model.addAttribute("festivallist",festivallist);
					
			return "/festival/festivalList";
		}
						
		//이용기
		@GetMapping("/themeParkDetail")
		public ModelAndView themeParkDetail(@RequestParam("tnum") String tnum) {
			
			ModelAndView model=new ModelAndView();
			
			//조회수 ㅡ증가
			tripMapper.updateReadCount(tnum);
			TripDto tdto=tripMapper.getData(tnum);
			
			model.addObject("tdto",tdto);
			
			model.setViewName("/myTrip/themeParkDetail");
			
			return model;
		}
	
		//이용기
		@GetMapping("/festivalDetail")
		public ModelAndView festivalDetail(@RequestParam("tnum") String tnum) {
					
			ModelAndView model=new ModelAndView();
					
			//조회수 ㅡ증가
			tripMapper.updateReadCount(tnum);
			TripDto tdto=tripMapper.getData(tnum);
					
			model.addObject("tdto",tdto);
					
			model.setViewName("/festival/festivalDetail");
					
			return model;
		}
		
		//이용기
		@GetMapping("/festivalCalendar")
		public String festivalCalendar() {
			
			return "/festival/festivalCalendar";
		}
		
		@GetMapping("/searchTrip")
		public ModelAndView searchTrip(@RequestParam String searchtext)
		{
		  ModelAndView model=new ModelAndView();
		
		  List<TripDto> searchlist=tservice.getSearch(searchtext);

		  model.addObject("searchlist",searchlist);

		  model.setViewName("/search/searchResult");
		  return model;
		}


}
