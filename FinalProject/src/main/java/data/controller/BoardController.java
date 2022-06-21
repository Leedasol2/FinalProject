package data.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import data.dto.BoardDto;
import data.service.BoardService;
import data.service.MemberService;

@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	@Autowired
	MemberService memservice;
	
	
	@GetMapping("/board/shareTripHome")
	public String shareTripHome() {
		
		return "/board/board/shareTripHome";
	}
	
	@GetMapping("/board/bestBoard")
	public String bestBoard() {
		
		return "/board/board/bestBoard";
	}
	
	@GetMapping("/board/bulletinBoard")
	public ModelAndView bulletinBoard(@RequestParam (value = "currentPage",defaultValue = "1") int currentPage) {
		
		ModelAndView model=new ModelAndView();
		int totalBoardCnt=service.getBoardCnt();
		
		//페이징
		int totalPage; //총 페이지수
		int startPage; //각블럭의 시작페이지
		int endPage; //각블럭의 끝페이지
		int start; //각페이지의 시작번호
		int perPage=10; //한페이지에 보여질 글 갯수
		int perBlock=10; //한블럭당 보여지는 페이지 개수
		
		//총페이지 개수구하기
		totalPage=totalBoardCnt/perPage+(totalBoardCnt%perPage==0?0:1);

		//각블럭의 시작페이지
		startPage=(currentPage-1)/perBlock*perBlock+1;
		endPage=startPage+perBlock-1;

		//만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
		if(endPage>totalPage)
			endPage=totalPage;

		//각페이지에서 불러올 시작번호
		start=(currentPage-1)*perPage;
		
		//각 글앞에 붙일 시작번호 구하기
		int no=totalBoardCnt-(currentPage-1)*perPage;
		
		//게시글 가져오기
		//List<BoardDto> list=service.getAllBoards();
		
		List<BoardDto> list=service.getList(start,perPage); 
		
		for (BoardDto b : list) {
			b.setWriter(memservice.getUserId(b.getMnum()));
		}
		
		
		
		//댓글개수
		
		
		//model에 변수 추가
		model.addObject("list", list);
		model.addObject("startPage",startPage);
		model.addObject("endPage",endPage);
		model.addObject("totalPage",totalPage);
		model.addObject("no",no);
		model.addObject("currentPage",currentPage);
		model.addObject("totalBoardCnt", totalBoardCnt);
		
		
		model.setViewName("/board/board/bulletinBoard");
		
		return model;
		
	}
	
	@GetMapping("/board/boardwriteform")
	public String boardwriteform(HttpSession session) {
		
		session.setAttribute("loginok", "yes");
		session.setAttribute("myid", "testtest");
		return "/board/board/boardwriteform";
	}
	
	@GetMapping("/board/boardDetailPage")
	public String boardDetailPage() {
		
		return "/board/board/boardDetailPage";
	}
	
	@GetMapping("/board/boardupdateform")
	public String boardupdateform() {
		
		return "/board/board/boardupdateform";
	}
	
	@GetMapping("/board/loginMiss")
	public String loginMiss() {
		
		return "/board/board/loginMiss";
	}
	
	
	@PostMapping("/board/write")
	public String insertBoard(@ModelAttribute BoardDto dto,	//dto에 upload 포함
			HttpSession session) {
		String loginok=(String)session.getAttribute("loginok");
		//로그인중이 아닐 때
		if(loginok==null || loginok.equals("")) { 
			return "/board/loginMiss"; //경고창 띄우고 main으로 가서 로그인 다시 시킴 
		} 
		
		//업로드할 폴더 지정 
		String path=session.getServletContext().getRealPath("/photo"); //webapp에있는거 
		System.out.println(path); 
		//파일 업로드 안한경우 no로 저장 
		String photo="";
		if (dto.getUpload().get(0).getOriginalFilename().equals("")) { 
			photo="no"; //DB에 no로 저장 
		}else { 
			for(MultipartFile f:dto.getUpload()) { 
		
				photo+=f.getOriginalFilename()+","; 
				
				//실제 업로드 
				try { 
					f.transferTo(new File(path+"\\"+f.getOriginalFilename())); 
				} catch (IllegalStateException | IOException e) { 
					// TODO Auto-generated catch block 
					e.printStackTrace(); 
				} 
			} 
			//마지막 , 제거
			photo=photo.substring(0,photo.length()-1);
		}
		
		dto.setPhoto(photo); 
		//세션에서 아이디를 얻어서 mnum값 구하기
		String myid=(String)session.getAttribute("myid");
		String mnum=memservice.getMnum(myid);
		
		//dto에 mnum값 넣기
		dto.setMnum(mnum);
		
		//insert 
		service.insertOfBoard(dto); 
		int bnum=service.getMaxBnum();  
		//방금 쓴 글의 상세페이지로 이동
		return "redirect:boardDetailPage?bnum="+bnum; 
	}
	
	// 게시글 상세페이지
	@GetMapping("/board/detail")
	public ModelAndView boardDetail(String bnum, int currentPage) {
		
		ModelAndView model=new ModelAndView();
		
		//조회수 증가
		service.viewUp(bnum);
		
		BoardDto dto=service.getBoard(bnum);
		
		//작성자 dto에 넣기
		dto.setWriter(memservice.getUserId(dto.getMnum()));
		
		
		
		
		
		
		
		
		model.addObject("dto", dto);
		model.addObject("currentPage", currentPage);
		
		
		model.setViewName("/board/board/boardDetailPage");
		
		return model;
	}
	
	
	
	
	
	
	
	
}
