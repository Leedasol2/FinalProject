package data.controller;

import java.sql.Timestamp;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView bestTrip(@RequestParam(value = "currentPage",defaultValue = "1") int currentPage,
			@RequestParam(value =  "tnum",required = false) String tnum) {
			
		ModelAndView mview=new ModelAndView();
		
		List<TripDto> list=tservice.getList();
		
		//list에 여행지 별점 추가하기
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
		
		//정렬
		list.sort(new AvgrstarComparator().reversed()); //별점 높은순 정렬
//		list.sort(new ReviewCountComparator().reversed()); //리뷰 많은순으로 정렬
//		list.sort(new AvgrstarComparator()); //별점 낮은순 정렬
		
		//출력에 필요한 변수들을 request에 저장
		mview.addObject("list",list); //댓글개수 포함후 전달
		mview.addObject("tdto",tdto);
		mview.setViewName("/trip/bestTrip");
		
		return mview;
	}
	
	//별점 높은순으로 정렬
	class AvgrstarComparator implements Comparator<TripDto>{
		
		@Override
		public int compare(TripDto t1,TripDto t2) {
			if(t1.getAvgrstar() > t2.getAvgrstar()) {
				return 1;
			}else if
			(t1.getAvgrstar()<t2.getAvgrstar()) {
				return -1;
			}
			return 0;
		}
	}
	
	//리뷰 많은순으로 정렬
	class ReviewCountComparator implements Comparator<TripDto>{
		
		@Override
		public int compare(TripDto t1, TripDto t2) {
			if(t1.getReviewcount()>t2.getReviewcount()) {
				return 1;
			}else if
			(t1.getReviewcount()<t2.getReviewcount()) {
				return -1;
			}
			return 0;
		}
	}
	
	//지역별 여행지 페이지
	@GetMapping("/regionTrip")
	public String regionTrip(Model model,@RequestParam(value =  "tnum",required = false) String tnum,
			@RequestParam(value = "SelectSort",required = false) String SelectSort) {
		
		String CurrentRegion="서울";
		
		List<TripDto> regionList=tservice.getRegionList(CurrentRegion);
		
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
		
		
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("regionList",regionList);
		return "/trip/regionTrip";
	}
	
	@PostMapping("/reviewCountSelect")
	public String reviewCountSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> regionList=tservice.getList();
		
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:regionList) {
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
		
		model.addAttribute("tdto",tdto);
		
	
			regionList.sort(new ReviewCountComparator().reversed());
		
		model.addAttribute("regionList",regionList);
		
		return "/trip/regionTrip";
	}
	
	
	@PostMapping("/highstarSelect")
	public String highstarSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> regionList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:regionList) {
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
		
		regionList.sort(new AvgrstarComparator().reversed());
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("regionList",regionList);
		
		return "/trip/regionTrip";
	}
	
	@PostMapping("/topviewSelect")
	public String topviewSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> regionList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:regionList) {
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
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("regionList",regionList);
		
		return "/trip/regionTrip";
	}
	
	@PostMapping("/lowstarSelect")
	public String lowstarSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> regionList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:regionList) {
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
		
		regionList.sort(new AvgrstarComparator());
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("regionList",regionList);
		
		return "/trip/regionTrip";
	}
	
	//themaTrip Select 선택이벤트
	@PostMapping("/themahighstarSelect")
	public String themahighstarSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> themeList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:themeList) {
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
		
		
		themeList.sort(new AvgrstarComparator().reversed());
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("themeList",themeList);
		
		return "/trip/themaTrip";
	}
	
	@PostMapping("/themereviewCountSelect")
	public String themereviewCountSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> themeList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:themeList) {
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
		
		model.addAttribute("tdto",tdto);
	
		themeList.sort(new ReviewCountComparator().reversed());
		
		model.addAttribute("themeList",themeList);
		
		return "/trip/themaTrip";
	}
	
	@PostMapping("/themelowstarSelect")
	public String themelowstarSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> themeList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:themeList) {
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
		
		themeList.sort(new AvgrstarComparator());
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("themeList",themeList);
		
		return "/trip/themaTrip";
	}
	
	@PostMapping("/themetopviewSelect")
	public String themetopviewSelect(@RequestParam String SelectSort,@RequestParam(value =  "tnum",required = false) String tnum,
			Model model) {
		
		List<TripDto> themeList=tservice.getList();
		
		//list에 여행지 별점 추가하기
		TripDto tdto=new TripDto();
		for(TripDto t:themeList) {
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
		
		model.addAttribute("tdto",tdto);
		model.addAttribute("regionList",themeList);
		
		return "/trip/themaTrip";
	}
	
	
	//retionTrip 카테고리 클릭 이벤트
	@PostMapping("/RegionChange")
	public String RegionChange(@RequestParam String CurrentRegion ,Model model) {
		
		List<TripDto> regionList=tservice.getRegionList(CurrentRegion);
		
		//list에 여행지 별점 추가하기
				TripDto tdto=new TripDto();
				for(TripDto t:regionList) {
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
				
		model.addAttribute("regionList",regionList);
		model.addAttribute("tdto",tdto);
		
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
		model.addAttribute("themeList",themeList);
		model.addAttribute("tdto",tdto);
				
		return "/trip/themaTrip";
	}
		
	//themaTrip 카테고리 클릭 이벤트
	@PostMapping("/ThemeChange")
	public String ThemeChange(@RequestParam String CurrentTheme,Model model) {
		
		List<TripDto> themeList=tservice.getThemeList(CurrentTheme);
		
		//list에 여행지 별점 추가하기
				TripDto tdto=new TripDto();
				for(TripDto t:themeList) {
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
		
		model.addAttribute("themeList",themeList);
		model.addAttribute("tdto",tdto);
		
		return "/trip/themaTrip";
	}
	
	//이용기
		@GetMapping("/themeParkList")
		public String themeParkList(Model model) {
			
			
			//String CurrentRegion="서울";
			String themepark="'themepark'";
			
			List<TripDto> themeparklist=tservice.getAllActivitys(themepark);
			
			TripDto tdto=new TripDto();
			for(TripDto r:themeparklist) {
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
			
			
			
			System.out.println(themeparklist);
			
			model.addAttribute("tdto",tdto);
			model.addAttribute("themeparklist",themeparklist);
					
			
			return "/myTrip/themeParkList";
		}
		
		
		@PostMapping("/themeChange")
		public String themeChange(@RequestParam String CurrentRegion,  Model model) {
						
			String themepark="themepark";
			
			List<TripDto> themeparklist=tservice.getRegionThemeList(themepark, CurrentRegion);
						
			System.out.println(themeparklist);
			
			
			//list에 여행지 별점 추가하기
			TripDto tdto=new TripDto();
			for(TripDto t:themeparklist) {
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
			
			model.addAttribute("themeparklist", themeparklist);						
			model.addAttribute("tdto",tdto);

			
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
			
			if(rservice.getReviewcount(tnum)>0) {
				double avgrstar=rservice.getAvgrstar(tnum);
				int reviewcount=rservice.getReviewcount(tnum);
				tdto.setAvgrstar(avgrstar);
				tdto.setReviewcount(reviewcount);
			}else {
				double avgrstar=0;
				tdto.setAvgrstar(avgrstar);
			}
			
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
		public String festivalCalendarList(Model model) {
			

			String festival="'festival'";
			//String fesday=model.getAttribute("")
			
			
			//int festotalCount=tservice.getTotalCount();
			
			//System.out.println("festotalCount:"+festotalCount);
			
			
			List<TripDto> calendarlist=tservice.getAllActivitys(festival);
			
			model.addAttribute("festival", festival);
							
			//model.addAttribute("festotalCount", festotalCount);

			model.addAttribute("calendarlist",calendarlist);
			
			return "/festival/festivalCalendar";
		}
		
		
		@GetMapping("/searchTrip")
        public ModelAndView searchTrip(@RequestParam String searchtext)
        {
          ModelAndView model=new ModelAndView();

          List<TripDto> searchlist=tservice.getSearch(searchtext);

          TripDto tdto=new TripDto();
          for(TripDto t:searchlist) {
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
          int sizz=searchlist.size();

          model.addObject("searchlist",searchlist);
          model.addObject("sizz",sizz);
          model.setViewName("/search/searchResult");
          return model;
        }

        @GetMapping("/searchFail")
        public String searchFail()
        {
            return "/search/searchFail";
        }
		
		@PostMapping("/getfescount")
		
		@ResponseBody
		public int getfescount(@RequestBody Map<String, String> vo) {
			//System.out.println("컨트롤러 실행");
			
			 String day=(String)vo.get("day");
			 
			 //System.out.println(day);
			 
			 
			 int festotalCount=tservice.getTotalCount(day);
			 //System.out.println(festotalCount);
			 
			
			return festotalCount;
		}
		
		
		
		
		
		


}
