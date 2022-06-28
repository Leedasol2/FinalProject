package data.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.controller.TripController.AvgrstarComparator;
import data.dto.BoardDto;
import data.dto.TripDto;
import data.mapper.BoardMapperInter;
import data.service.BoardService;
import data.service.ReviewService;
import data.service.TripService;

@Controller
public class MainController {

    @Autowired
    BoardService bservice;
    
    @Autowired
    TripService tservice;
    
    @Autowired
    ReviewService rservice;
    
    @GetMapping("/")
    public String home(Model model,
            @RequestParam(value = "currentPage",defaultValue = "1") int currentPage,
            @RequestParam(value =  "tnum",required = false) String tnum) 
    {
            
            String theme="'themepark'";
            String festival="'festival'";
            
            List<TripDto> triplist=tservice.getAllTrips();
            List<TripDto> themeparklist=tservice.getAllActivitys(theme);
            List<TripDto> festivallist=tservice.getAllActivitys(festival);
            List<BoardDto> boardlist=bservice.getAllBoards();
            
            //list에 여행지 별점 추가하기
            TripDto tdto=new TripDto();
            for(TripDto t:triplist) {
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
            triplist.add(tdto);
            
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
            themeparklist.add(tdto);
            
            //출력에 필요한 변수들을 request에 저장
            model.addAttribute("tdto",tdto);
            
            model.addAttribute("triplist",triplist);
            model.addAttribute("boardlist",boardlist);
            model.addAttribute("themeparklist",themeparklist);
            model.addAttribute("festivallist",festivallist);
            
            return "/layout/main";
    }
}

