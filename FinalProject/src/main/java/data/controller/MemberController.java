package data.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;
import data.service.MemberService;

@Controller
public class MemberController {

	//차동현
	@Autowired
	MemberService service;

	@Autowired
	MemberMapperInter mapper;


	//회원가입 페이지
	@GetMapping("/joinMember/loginJoin")
	public String signup() {

		return "/joinMember/loginJoin";
	}

	//회원가입-이메일인증 페이지
	@GetMapping("/joinMember/loginEmail")
	public String joinmember() {

		return "/joinMember/loginEmail";
	}

	@GetMapping("/joinMember/loginEnd")
	public String loginend() {

		return "/joinMember/loginEnd";
	}

	@GetMapping("/joinMember/emailCheck")
	@ResponseBody
	public Map<String, Integer> emailcheck(@RequestParam String email) {
	{
		Map<String, Integer> map=new HashMap<>();

		int check=service.getSearchEmail(email);
		map.put("check", check); // 0 or 1

		return map;
		}
	}

	@GetMapping("/joinMember/idcheck")
	@ResponseBody
	public Map<String, Integer> idCheck(@RequestParam String userid){

		Map<String, Integer> map = new HashMap<String, Integer>();

	    int check=service.getIdCheck(userid);
		map.put("check", check); // 0 or 1

	    return map;
	}

	@GetMapping("/joinMember/logininfo")
	public String logininfo(Model model,
			@RequestParam String emailfront,
			@RequestParam String emailback) {

		model.addAttribute("emailfront",emailfront);
		model.addAttribute("emailback",emailback);

		return "/joinMember/loginInfo";
	}

	@PostMapping("/joinMember/insertMember")
	public String insertMember(@ModelAttribute MemberDto dto,
			@RequestParam String email1,
			@RequestParam String email2) {

		dto.setEmail(email1+"@"+email2);

		service.insertMember(dto);

		return "/joinMember/loginEnd";
	}

	
}
