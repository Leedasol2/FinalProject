package data.controller;

import java.io.Console;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.core.subst.Tokenizer;
import data.dto.BoardDto;
import data.dto.CommentsDto;
import data.service.BoardService;
import data.service.CommentsService;
import data.service.MemberService;

@Controller
public class BoardController {

	@Autowired
	BoardService service;

	@Autowired
	MemberService memservice;

	@Autowired
	CommentsService comservice;

	@GetMapping("/board/shareTripHome")
	public ModelAndView shareTripHome() {
		
		ModelAndView model = new ModelAndView();
		
		//best 목록 5개
		List<BoardDto> bestlist = service.getBestList(0, 5);

		for (BoardDto b : bestlist) {
			b.setWriter(memservice.getUserId(b.getMnum()));
			b.setCommentCnt(comservice.getCommentsCnt(b.getBnum()));
		}
		
		//전체글 목록 5개
		List<BoardDto> bullist = service.getList(0, 5);

		for (BoardDto b : bullist) {
			b.setWriter(memservice.getUserId(b.getMnum()));
			b.setCommentCnt(comservice.getCommentsCnt(b.getBnum()));
		}
		String newBnum=String.valueOf(service.getMaxBnum());
		
		model.addObject("bestlist", bestlist);
		model.addObject("bullist", bullist);
		model.addObject("type", "home");
		model.addObject("newWrite", service.getBoard(newBnum).getWriteday());
		
		
		model.setViewName("/board/board/shareTripHome");
		
		
		return model;
	}

	@GetMapping("/board/bestBoard")
	public ModelAndView bestBoard(
		@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

			ModelAndView model = new ModelAndView();
			int totalBoardCnt = 30;

			// 페이징
			int totalPage=3; // 총 페이지수
			int start; // 각페이지의 시작번호
			int perPage = 10; // 한페이지에 보여질 글 갯수


			// 각페이지에서 불러올 시작번호
			start = (currentPage - 1) * perPage;

			// 각 글앞에 붙일 시작번호 구하기
			int no = 30 - (currentPage - 1) * perPage;

			List<BoardDto> bestlist = service.getBestList(start, perPage);

			for (BoardDto b : bestlist) {
				b.setWriter(memservice.getUserId(b.getMnum()));
				b.setCommentCnt(comservice.getCommentsCnt(b.getBnum()));
				b.setLikes(service.getLikeCount(b.getBnum()));
			}

			String newBnum=String.valueOf(service.getMaxBnum());
			
			// 댓글개수

			// model에 변수 추가
			model.addObject("bestlist", bestlist);
			model.addObject("totalPage", totalPage);
			model.addObject("no", no);
			model.addObject("currentPage", currentPage);
			model.addObject("totalBoardCnt", totalBoardCnt);
			model.addObject("best", "best");
			model.addObject("type", "best");
			model.addObject("newWrite", service.getBoard(newBnum).getWriteday());
			
			model.setViewName("/board/board/bestBoard");

			return model;
	}

	@GetMapping("/board/bulletinBoard")
	public ModelAndView bulletinBoard(@RequestParam(value = "currentPage", defaultValue = "1") int currentPage) {

		ModelAndView model = new ModelAndView();
		int totalBoardCnt = service.getBoardCnt();

		// 페이징
		int totalPage; // 총 페이지수
		int startPage; // 각블럭의 시작페이지
		int endPage; // 각블럭의 끝페이지
		int start; // 각페이지의 시작번호
		int perPage = 10; // 한페이지에 보여질 글 갯수
		int perBlock = 10; // 한블럭당 보여지는 페이지 개수

		// 총페이지 개수구하기
		totalPage = totalBoardCnt / perPage + (totalBoardCnt % perPage == 0 ? 0 : 1);

		// 각블럭의 시작페이지
		startPage = (currentPage - 1) / perBlock * perBlock + 1;
		endPage = startPage + perBlock - 1;

		// 만약 총페이지가 8 -2번째블럭: 6-10 ..이럴경우는 endpage가 8로 수정되어야함
		if (endPage > totalPage)
			endPage = totalPage;

		// 각페이지에서 불러올 시작번호
		start = (currentPage - 1) * perPage;

		// 각 글앞에 붙일 시작번호 구하기
		int no = totalBoardCnt - (currentPage - 1) * perPage;

		// 게시글 가져오기
		// List<BoardDto> list=service.getAllBoards();

		List<BoardDto> list = service.getList(start, perPage);

		for (BoardDto b : list) {
			b.setWriter(memservice.getUserId(b.getMnum()));
			b.setCommentCnt(comservice.getCommentsCnt(b.getBnum()));
			b.setLikes(service.getLikeCount(b.getBnum()));
		}
		String newBnum=String.valueOf(service.getMaxBnum());
		// 댓글개수

		// model에 변수 추가
		model.addObject("list", list);
		model.addObject("startPage", startPage);
		model.addObject("endPage", endPage);
		model.addObject("totalPage", totalPage);
		model.addObject("no", no);
		model.addObject("currentPage", currentPage);
		model.addObject("totalBoardCnt", totalBoardCnt);
		model.addObject("type", "bul");
		model.addObject("newWrite", service.getBoard(newBnum).getWriteday());
		
		model.setViewName("/board/board/bulletinBoard");

		return model;

	}

	@GetMapping("/board/boardwriteform")
	public String boardwriteform(HttpSession session) {
			
		return "/board/board/boardwriteform";
	}

	@GetMapping("/board/boardDetailPage")
	public String boardDetailPage() {

		return "/board/board/boardDetailPage";
	}

	@GetMapping("/board/boardupdateform")
	public ModelAndView boardupdateform(@RequestParam String bnum) {
		
		ModelAndView model=new ModelAndView();
		
		BoardDto dto=service.getBoard(bnum);
		
		
		model.addObject("dto", dto);
		
		
		model.setViewName("/board/board/boardupdateform");
		
		return model;
	}

	@GetMapping("/board/loginMiss")
	public String loginMiss() {

		return "/board/board/loginMiss";
	}

	@PostMapping("/board/write")
	public String insertBoard(@ModelAttribute BoardDto dto, // dto에 upload 포함
			HttpSession session) {

		// 업로드할 폴더 지정
		String path = session.getServletContext().getRealPath("/photo"); // webapp에있는거
		System.out.println(path);
		// 파일 업로드 안한경우 no로 저장
		String photo = "";
		if (dto.getUpload().get(0).getOriginalFilename().equals("")) {
			photo = "no"; // DB에 no로 저장
		} else {
			for (MultipartFile f : dto.getUpload()) {

				photo += f.getOriginalFilename() + ",";

				// 실제 업로드
				try {
					f.transferTo(new File(path + "\\" + f.getOriginalFilename()));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 마지막 , 제거
			photo = photo.substring(0, photo.length() - 1);
		}

		dto.setPhoto(photo);
		// 세션에서 아이디를 얻어서 mnum값 구하기
		String myid = (String) session.getAttribute("myid");
		String mnum = memservice.getMnum(myid);

		// dto에 mnum값 넣기
		dto.setMnum(mnum);

		// insert
		service.insertOfBoard(dto);
		int bnum = service.getMaxBnum();
		// 방금 쓴 글의 상세페이지로 이동
		return "redirect:/board/detail?bnum="+bnum;
	}

	// 게시글 상세페이지
	@GetMapping("/board/detail")
	public ModelAndView boardDetail(String bnum,
			@RequestParam(value = "currentPage", defaultValue = "1") int currentPage, 
			HttpSession session,
			@RequestParam(value = "type", defaultValue = "bul") String type) {

		ModelAndView model = new ModelAndView();

		// 조회수 증가
		service.viewUp(bnum);

		BoardDto dto = service.getBoard(bnum);

		// 작성자 dto에 넣기
		dto.setWriter(memservice.getUserId(dto.getMnum()));

		
		//추천
		int likesCnt=service.getLikeCount(bnum);
		
		String loginok = (String) session.getAttribute("loginok");
		String myid;
		boolean mylike;
			
		// 로그인중이 아닐 때
		if (loginok == null || loginok.equals("")) {
			mylike=false;
		}else {
			myid=(String)session.getAttribute("myid");
			mylike= service.isMyLike(bnum, memservice.getMnum(myid))==1?true:false;
		}
		
		int commentCnt = comservice.getCommentsCnt(bnum);
		//로그인한 id가 추천했으면 true, 아니면 false
		 
		// 댓글
		List<CommentsDto> clist = comservice.getComments(bnum);

		for (CommentsDto c : clist) {
			c.setCwriter(memservice.getUserId(c.getMnum()));
		}
		String newBnum=String.valueOf(service.getMaxBnum());
		
		model.addObject("dto", dto);
		model.addObject("currentPage", currentPage);
		model.addObject("commentCnt", commentCnt);
		model.addObject("clist", clist);
		model.addObject("likesCnt", likesCnt);
		model.addObject("mylike", mylike);
		model.addObject("type", type);
		model.addObject("newWrite", service.getBoard(newBnum).getWriteday());
		
		
		model.setViewName("/board/board/boardDetailPage");

		return model;
	}

	
	@PostMapping("/board/updateboard")
	public String updateboard(@ModelAttribute BoardDto dto,
			HttpSession session) {
		

		// 업로드할 폴더 지정
		String path = session.getServletContext().getRealPath("/photo"); // webapp에있는거
		System.out.println(path);
		
		// 파일 업로드 안한경우 업데이트 X
		String photo = "";
		if (dto.getUpload().get(0).getOriginalFilename().equals("")) {
			photo = "no"; // 업데이트 X
		} else {
			//기존 파일 삭제
			String beforePhoto=service.getBoard(dto.getBnum()).getPhoto();
			
			if(!beforePhoto.equals("no")) {
				// ,로 분리
				String []fName=beforePhoto.split(",");
				
				//여러개 사진 전부 삭제
				for(String f:fName) {
					File file=new File(path+"\\"+f);
					System.out.println(file);
					file.delete();
				}
			}
			
			//새로운 파일 업로드
			for (MultipartFile f : dto.getUpload()) {

				photo += f.getOriginalFilename() + ",";

				// 실제 업로드
				try {
					f.transferTo(new File(path + "\\" + f.getOriginalFilename()));
				} catch (IllegalStateException | IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			// 마지막 , 제거
			photo = photo.substring(0, photo.length() - 1);
		}

		dto.setPhoto(photo);
		
		
		service.updateBoard(dto);
		
		
		return "redirect:/board/detail?bnum="+dto.getBnum();
	}
	
	@PostMapping("/board/likeAdd")
	@ResponseBody
	public boolean addlike(@RequestBody Map<String, String> vo) {
		
		String bnum=(String)vo.get("bnum");
		String mnum=memservice.getMnum(vo.get("myid"));
	

		System.out.println(bnum+","+mnum);
		
		service.addLike(bnum, mnum);
		boolean result=true;
		
		return result;
	}
	
	@PostMapping("/board/likeDel")
	@ResponseBody
	public boolean dellike(@RequestBody Map<String, String> vo) {
		
		String bnum=vo.get("bnum");
		String mnum=memservice.getMnum(vo.get("myid"));
		
		
		System.out.println(bnum+","+mnum);
		
		service.delLike(bnum, mnum);
		
		boolean result=true;
		
		return result;
	}
	
	//삭제
	@GetMapping("/board/deleteboard")
	public String deleteboard(@RequestParam String bnum, @RequestParam String type) {
		
		service.deleteBoard(bnum);
		
		if(type.equals("home")) {
			System.out.println("home으로");
			return "redirect:/board/shareTripHome";
		}else if(type.equals("best")) {
			System.out.println("best로");
			return "redirect:/board/bestBoard";
		}else{
			System.out.println("bul로");
			return "redirect:/board/bulletinBoard";
		}
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
