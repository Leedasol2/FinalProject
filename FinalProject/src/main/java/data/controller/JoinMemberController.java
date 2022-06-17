package data.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.mapper.MemberMapperInter;

@Controller
public class JoinMemberController {

	//차동현
	
	@Autowired
	MemberMapperInter mapper;
	
	//로그인 페이지
	@GetMapping("login")
	public String login() {
		
		return "/html/loginHome";
	}
	
	//회원가입 페이지
	@GetMapping("signup")
	public String signup() {
		
		return "/joinMember/loginJoin";
	}
	
	//회원가입-이메일인증 페이지
	@GetMapping("joinmember")
	public String joinmember() {
		
		return "/joinMember/loginEmail";
	}
	
	@GetMapping("loginend")
	public String loginend() {
		
		return "/joinMember/loginEnd";
	}
	
	//테마파크 페이지
	@GetMapping("themePark")
	public String themePark() {
		
		return "/html/themePark";
	}
	
	//축제 페이지
	@GetMapping("festival")
	public String festival() {
		
		return "/html/festival";
	}
	
	//나에게 딱 맞는 여행지는? 페이지
	@GetMapping("myTripStart")
	public String myTripStart() {
		
		return "/html/myTripStart";
	}
	
	@GetMapping("/joinMember/emailCheck")
	@ResponseBody
	public Map<String, Integer> emailcheck(@RequestParam String email) {
	{
		Map<String, Integer> map=new HashMap<>();
			
		int check=mapper.getSearchEmail(email);
		map.put("check", check); // 0 or 1
			
		return map;
	}
}
	
	@GetMapping("logininfo")
	public String logininfo() {
		
		return "/joinMember/loginInfo";
	}



	
}
