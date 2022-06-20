package data.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import data.mapper.MemberMapperInter;

@Controller
public class LoginController {

	@Autowired
	MemberMapperInter MemberInter;
	
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
	@GetMapping("/logout")
	public String logout(HttpSession session) {
			
		session.removeAttribute("loginok");
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
	
	//카카오 로그인
	@GetMapping("/KakaoLogin")
	public String KakaoLogin() {
		
		StringBuffer loginUrl = new StringBuffer();
        loginUrl.append("https://kauth.kakao.com/oauth/authorize?client_id=");
        loginUrl.append("ab610954ac33b0b98bd1acd54bf7f569"); 
        loginUrl.append("&redirect_uri=");
        loginUrl.append("http://localhost:9001"); 
        loginUrl.append("&response_type=code");
        
        return "redirect:"+loginUrl.toString();
	}
	
	
}
