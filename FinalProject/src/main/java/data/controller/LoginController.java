package data.controller;

import java.io.Console;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
import data.mapper.LoginMapperInter;
import data.mapper.MemberMapperInter;
import data.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	MemberMapperInter MemberInter;
	
	@Autowired
	LoginService service;
	
	@Autowired
	LoginMapperInter loginmapper;
	
	//강진_login
	@GetMapping("/loginHome")
	public String loginHome() {
		
		return "/login/loginHome";
	}
	
	@PostMapping("/login/loginmain")
	public String loginmain(@RequestParam(required = false) String cbsave,
			@RequestParam String userid,
			@RequestParam String password,
			HttpSession session) {
		
		HashMap<String, String> map=new HashMap<>();
		map.put("userid", userid);
		map.put("password", password);
		
		int check=MemberInter.login(map);
		if(check==1) {
			//session 설정
			session.setAttribute("myid", userid);
			session.setAttribute("loginok", "yes");
			session.setAttribute("saveok", cbsave);
			
			return "redirect:/";
		}else{
			return "/login/loginHome";
		}
		
		
	}
	
	//로그아웃
	@GetMapping("/login/logout")
	public String logout(HttpSession session) {
			
		session.removeAttribute("loginok");
		session.removeAttribute("loggedIn");
		return "/login/loginHome";
	}
	
	//아이디 찾기 관련
	@GetMapping("/login/loginMissId")
	public String loginMissId() {
		
		return "/login/loginMissId";
	}	
	
	@GetMapping("/login/loginMissIdFalse")
	public String loginMissIdFalse() {
		
		return "/login/loginMissIdFalse";
	}
	
	@GetMapping("/login/loginMissIdSuccess")
	public String loginMissIdSuccess() {
		
		return "/login/loginMissIdSuccess";
	}
	
	 
	@PostMapping("/login/missId")
	public String missId(
			@RequestParam String name,
			@RequestParam String email,
			@RequestParam String findid,
			HttpSession session,Model model) {
		
		HashMap<String, String> map=new HashMap<>();
		map.put("name", name);
		map.put("email", email);
		
		int check=MemberInter.missId(map);
		if(check==1) {	
			model.addAttribute("findid",MemberInter.getFindId(email));						

			return "/login/loginMissIdSuccess";
		}else {
			return "redirect:/login/loginMissIdFalse";
		}
	}
	
	//비밀번호 찾기
	@GetMapping("/login/loginMissPass")
	public String loginMissPass() {
		
		return "/login/loginMissPass";
	}		  
	
	@GetMapping("/login/loginMissPassFalse")
	public String loginMissPassFalse() {
		
		return "/login/loginMissPassFalse";
	}
	
	@GetMapping("/login/loginMissPassSuccess")
	public String loginMissPassSuccess() {
		
		return "/login/loginMissPassSuccess";
	}
	
	// 카카오 로그인
		@GetMapping("/login/kakao")
		public void kakaoLogin(
				@RequestParam String kid,
				@RequestParam String kemail,
				@RequestParam String knickname,
				HttpSession session
				) {
			if(MemberInter.getCheckKMember(kid) == 0) {
				
				// DB에 없으면 저장
				MemberDto member = new MemberDto();
				
				member.setEmail(kemail);
				member.setUserid(kid);
				member.setName(knickname);
				
				MemberInter.insertKMember(member);
			}
			
			session.setAttribute("loginName", knickname);
			session.setAttribute("myid", kid);
			session.setAttribute("loggedIn", "yes");
		}
		
		//네이버 로그인
		@GetMapping("callBack")
		public String callBack()
		{
			return "redirect:/";
		}
	
}
