package data.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import data.dto.MemberDto;
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
	@GetMapping("singup")
	public String singup() {
		
		return "/joinMember/loginJoin";
	}
	
	//회원가입-이메일인증 페이지
	@GetMapping("joinmember")
	public String joinmember() {
		
		return "/joinMember/loginEmail";
	}
	
	//베스트여행지 페이지
	@GetMapping("bestTrip")
	public String bestTrip() {
		
		return "/html/bestTrip";
	}
	
	//테마파크 페이지
	@GetMapping("themePark")
	public String themePark() {
		
		return "/html/themePark";
	}
	
	//여행공유 페이지
	@GetMapping("shareTripHome")
	public String shareTripHome() {
		
		return "/html/shareTripHome";
	}
	
	//테마별여행지 페이지
	@GetMapping("themaTrip")
	public String themaTrip() {
		
		return "/html/themaTrip";
	}
	
	//지역별여행지 페이지
	@GetMapping("regionTrip")
	public String regionTrip() {
		
		return "/html/regionTrip";
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
	
	
}
