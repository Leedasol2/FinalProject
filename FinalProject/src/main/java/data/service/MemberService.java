package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;

@Service
public class MemberService {

	@Autowired
	MemberMapperInter mapper;
	
	public String getMnum(String myid) {
		return mapper.getMnum(myid);
	}
	public String getUserId(String mnum) {
		return mapper.getUserId(mnum);
	}
	
	public List<MemberDto> getAllMembers(){
		return mapper.getAllMembers();
	}
	public int getSearchEmail(String email){
		return mapper.getSearchEmail(email);
	}
	public void insertMember(MemberDto dto){
		mapper.insertMember(dto);
	}
	
}
