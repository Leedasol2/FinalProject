package data.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import data.dto.BoardDto;
import data.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService service;
	
	@GetMapping("/board/shareTripHome")
	public String shareTripHome() {
		
		return "/board/board/shareTripHome";
	}
	
	@GetMapping("/board/bestBoard")
	public String bestBoard() {
		
		return "/board/board/bestBoard";
	}
	
	@GetMapping("/board/bulletinBoard")
	public String bulletinBoard() {
		
		return "/board/board/bulletinBoard";
	}
	
	@GetMapping("/board/boardwriteform")
	public String boardwriteform(HttpSession session) {
		
		session.setAttribute("myid", "testtest");
		//session.setAttribute("loginok", "yes");
		session.removeAttribute("loginok");
		
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
		if(loginok==null) { 
			return "/board/loginMiss"; //경고창 띄우고 main으로 가서 로그인 다시 시킴 
		} 
		
		//업로드할 폴더 지정 
		String path=session.getServletContext().getRealPath("/photo"); //webapp에있는거 
		//파일 업로드 안한경우 no로 저장 
		String photo="";
		if (dto.getUpload().get(0).getOriginalFilename().equals("")) { 
			photo="no"; //DB에 no로 저장 
		}else { 
			for(MultipartFile f:dto.getUpload()) { 
		
				photo+=f.getOriginalFilename()+","; 
				
				//실제 업로드 
				try { 
					f.transferTo(new File(path+"\\"+photo)); 
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
		String mnum=service.getMnum(myid);
		
		//dto에 mnum값 넣기
		dto.setMnum(mnum);
		
		//insert 
		service.insertOfBoard(dto); 
		int num=service.getMaxBnum();  
		//방금 쓴 글의 상세페이지로 이동
		return "redirect:boardDetailPage?num="+num; 
	}
	
	
	
}
