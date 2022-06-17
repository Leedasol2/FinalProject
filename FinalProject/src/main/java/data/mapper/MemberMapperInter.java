package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	//동현
	public List<MemberDto> getAllMembers();
	public int getSearchEmail(String email); 
	public void insertMember(MemberDto dto);
	
	//강진_login userid,password
	public int login(HashMap<String,String> map);
	
	//이다솔
	// id로 mnum 구하기
	public String getMnum(String myid);
	// mnum으로 id 구하기
	public String getUserId(String mnum);
	
	
	
}
