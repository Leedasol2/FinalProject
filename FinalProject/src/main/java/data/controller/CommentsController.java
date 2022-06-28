package data.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.CommentsDto;
import data.service.CommentsService;
import data.service.MemberService;

@Controller
public class CommentsController {
	
	@Autowired
	CommentsService service;
	
	@Autowired
	MemberService memservice;
	
	@PostMapping("/comments/insert")
	public String insertComments(@ModelAttribute CommentsDto dto,
			HttpSession session,
			int currentPage,
			String type) {
		
		
		dto.setMnum(memservice.getMnum((String)session.getAttribute("myid")));
		
		
		service.insertOfComments(dto);
		
		return "redirect:../board/detail?bnum="+dto.getBnum()+"&currentPage="+currentPage+"&type="+type;
	}
	
	@GetMapping("/board/getReply")
	@ResponseBody
	public List<CommentsDto> getReply(@RequestParam Map<String, String> vo) {
		
		//ModelAndView model=new ModelAndView();
		
		String cnum=(String)vo.get("cnum");
		System.out.println(cnum);
		
		List<CommentsDto> list=service.getReplyComments(cnum);
		
		for (CommentsDto c : list) {
			c.setCwriter(memservice.getUserId(c.getMnum()));
		}
		
		return list;
		
	}

	@PostMapping("/comments/delete")
	@ResponseBody
	public boolean deleteComment(@RequestBody Map<String, String> vo) {
		String cnum=(String)vo.get("cnum");
		
		service.deleteComment(cnum);
		service.deleteCommentReply(cnum);
		
		
		boolean result=true;
		
		
		
		return result;
	}

	@PostMapping("/comments/updatecom")
	public String updateComment(@ModelAttribute CommentsDto dto,
			@RequestParam int currentPage,@RequestParam String bnum, @RequestParam String type) {
		
		service.updateComment(dto);
		
		System.out.println("bnum="+bnum);
		return "redirect:../board/detail?bnum="+bnum+"&currentPage="+currentPage+"&type="+type;
	}
	
	
	
	
	
	
}
