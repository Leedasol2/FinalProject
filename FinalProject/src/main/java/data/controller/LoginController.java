package data.controller;

import java.io.Console;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	@PostMapping("/loginmain")
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
		}else {
			return "redirect:/login/loginHome";
		}
	}
	
	//로그아웃
	@GetMapping("/login/logout")
	public String logout(HttpSession session) {
			
		session.removeAttribute("loginok");
		session.removeAttribute("loggedIn");
		return "redirect:/loginHome";
	}
	
	//아이디 찾기
	@GetMapping("/loginMissId")
	public String loginMissId() {
		
		return "/html/loginMissId";
	}	
	//비밀번호 찾기
	@GetMapping("/loginMissPass")
	public String loginMissPass() {
		
		return "/html/loginMissPass";
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
			session.setAttribute("loginId", kemail);
			session.setAttribute("loggedIn", "yes");
		}
	
}
