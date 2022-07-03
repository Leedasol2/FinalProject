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
	public int getIdCheck(String userid){
		return mapper.getIdCheck(userid);
	}
	public void insertMember(MemberDto dto){
		mapper.insertMember(dto);
	}
	public void insertKMember(MemberDto dto) {
		mapper.insertKMember(dto);
	}
	public int getCheckKMember(String userid) {
		return mapper.getCheckKMember(userid);
	}
	
	public String getFindId(String email) {
		return mapper.getMnum(email);
	}	
	
	public MemberDto getData(String mnum) {
		return mapper.getData(mnum);
	}
	
	public void updateMember(MemberDto dto){
		mapper.updateMember(dto);
	}
	public void deleteMember(String mnum){
		mapper.deleteMember(mnum);
	}
	public void updatePass(MemberDto dto){
		mapper.updatePass(dto);
	}
	public String findMnum(String email){
		return mapper.findMnum(email);
	}
	
	public String findPass(String mnum){
		return mapper.findPass(mnum);
	}
	
	public int nameCheck(String name){
		return mapper.nameCheck(name);
	}
}