package data.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.ReviewDto;
import data.mapper.TripMapperInter;
import data.service.MemberService;
import data.service.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	ReviewService service;
	
	@Autowired
	TripMapperInter tripMapper;
	
	@Autowired
	MemberService memService;
	
	@GetMapping("/mypage/myPageReview")
	public ModelAndView list(
		         @RequestParam (value = "currentPage",defaultValue = "1") int currentPage,
		         HttpSession session)

	{
		ModelAndView mview=new ModelAndView();
		String myid=(String)session.getAttribute("myid");
		String mnum=memService.getMnum(myid);
		int totalCount=service.getTotalCount(mnum);
		
		//페이징처리에 필요한 변수
		int totalPage; //총 페이지수
		int startPage; //각블럭의 시작페이지
		int endPage; //각블럭의 끝페이지
		int start; //각페이지의 시작번호
		int perPage=5; //한페이지에 보여질 글 갯수
		int perBlock=5; //한블럭당 보여지는 페이지 개수

		//총페이지 개수구하기
		totalPage=(totalCount/perPage+(totalCount%perPage==0?0:1));
		//totalPage=((totalCount-1)/perPage)+1;

		//각블럭의 시작페이지
		//예:현재페이지가 3인경우 startpage=1,endpage= 5
		//현재페이지가 6인경우 startpage=6,endpage= 10
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;

		//만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
		if(endPage>totalPage)
		   endPage=totalPage;

		//각페이지에서 불러올 시작번호
		start=(currentPage-1)*perPage;

		//각페이지에서 필요한 게시글 가져오기
		List<ReviewDto> list=service.getList(start, perPage, mnum);
		
		//list에 각 리뷰에 대한 여행지 이름 가져오기
		for(ReviewDto r:list)
		{
			String title=tripMapper.getTitle(r.getTnum());
			r.setTitle(title);

			String mnum2=service.getMnum(r.getRnum());
			r.setMnum2(mnum2);
		}
		
		//각 글앞에 붙일 시작번호 구하기
		//총글이 20개면? 1페이지 20 2페이지 15부터 출력해서 1씩 감소
		int no=totalCount-(currentPage-1)*perPage;
		
		//출력에 필요한 변수들을 request에 저장
		mview.addObject("list",list);
		mview.addObject("startPage",startPage);
		mview.addObject("endPage",endPage);
		mview.addObject("totalPage",totalPage);
		mview.addObject("no",no);
		mview.addObject("currentPage",currentPage);
				
		mview.addObject("mnum",mnum);
		mview.addObject("myid",myid);
		mview.addObject("totalCount",totalCount);
		mview.setViewName("/mypage/myPageReview");
		
		return mview;
	}
	
	
	@GetMapping("/mypage/myPageReviewEdit")
	public ModelAndView myPageReviewEdit(
			@RequestParam String rnum,
			@RequestParam String currentPage)
	{
		ModelAndView mview=new ModelAndView();
		ReviewDto dto = service.getData(rnum);
		String title=tripMapper.getTitle(dto.getTnum());
		dto.setTitle(title);
		
		mview.addObject("dto", dto);
		mview.addObject("currentPage", currentPage);
		mview.setViewName("/mypage/myPageReviewEdit");
		
		return mview; 
	}

	//수정
	@PostMapping("/mypage/update")
	public String update(@ModelAttribute ReviewDto dto,
			@RequestParam String currentPage, HttpSession session) 
	{
		service.updateReview(dto);
		return "redirect:myPageReview?currentPage=" + currentPage;
	}

	//삭제
	@GetMapping("/mypage/delete")
	public String delete(@RequestParam String rnum,
			@RequestParam String currentPage,
			HttpSession session)
	{
		service.deleteReview(rnum);
		return "redirect:myPageReview?currentPage="+currentPage;
	}
	
	@GetMapping("/mypage/tmrcount")
	@ResponseBody
	public String count(@RequestParam String tnum, @RequestParam String myid)
	{
		String mnum=memService.getMnum(myid);
		
		String TMRcount= service.getTMRcount(tnum, mnum);
		return TMRcount;
		
	}
	
}
