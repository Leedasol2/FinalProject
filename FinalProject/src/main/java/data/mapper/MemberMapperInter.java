package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public List<MemberDto> getAllMembers();
	public int getSearchEmail(String email); 
	
	//강진_login userid,password
	public int login(HashMap<String,String> map);
	
	//이다솔 - id로 mnum 구하기
	public String getMnum(String myid);
}
