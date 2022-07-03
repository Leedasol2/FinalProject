package data.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;
import data.service.MemberService;


@Controller
public class MailController {
  
  @Autowired
  private JavaMailSender javaMailSender;
  
  @Autowired
  MemberService service;
  
  @Autowired
  MemberMapperInter mapper;
  
    //인증메일 보내기
    @RequestMapping(value="/member/CheckMail", method = {RequestMethod.POST})
	@ResponseBody
	public String SendMail(String mail) {

		Random random = new Random();
		String key = "";

		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(mail); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		// 입력 키를 위한 코드
		for (int i = 0; i < 3; i++) {
			int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
			key += (char) index;
		}
		int numIndex = random.nextInt(8999) + 1000; // 4자리 정수를 생성
		key += numIndex;
		message.setSubject("인증코드를 확인하신 후 인증코드란에 입력해 주세요.");
		message.setText("인증코드 : " + key);
		javaMailSender.send(message);
		Gson gson = new Gson();
		
		return gson.toJson(key);
	}
  
  
  //비밀번호 찾기용 메일 보내기
  @RequestMapping(value="/login/misspass", method = {RequestMethod.POST})
	public String passMail(@RequestParam String userid, @RequestParam String email,
			@RequestParam String name) {

	 // 임시 비밀번호 만든 뒤 해당 아이디에 대한 비밀번호 DB값 변경하기
	  Random random = new Random();
	  String newpass = "";	  
	  
	  String mnum = service.findMnum(email); // 엠넘 찾기
	  MemberDto dto = service.getData(mnum);
	  	  	  
	  if(userid.equals(dto.getUserid()) && email.equals(dto.getEmail()) && name.equals(dto.getName()) ) {
		  // 임시 비밀번호 만들기
		  for (int i = 0; i < 3; i++) {
			  int index = random.nextInt(25) + 65; // A~Z까지 랜덤 알파벳 생성
			  newpass += (char) index;
		  }
		  int numIndex = random.nextInt(100000) + 1000; 
		  newpass += numIndex;
		  
		  // 기존 비밀번호 변경
		  
		  dto.setPassword(newpass);
		  mapper.updatePass(dto);

		  
		  SimpleMailMessage message = new SimpleMailMessage();
		  message.setTo(email); // 스크립트에서 보낸 메일을 받을 사용자 이메일 주소
		  message.setSubject("2RUN TRIP에서 " + userid + "회원님의 임시 비밀번호를 알려드립니다.");
		  message.setText("임시 비밀번호 : " + newpass + "\n임시 비밀번호를 이용해 로그인 한 뒤, 비밀번호를 바꿔주세요.");
		  javaMailSender.send(message);

		  return "/login/loginMissPassSuccess";
	  } else {
		  return "/login/loginMissPassFalse";
	  }
  	}	  
}