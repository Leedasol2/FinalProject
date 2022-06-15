package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.MemberDto;

@Mapper
public interface MemberMapperInter {

	public List<MemberDto> getAllMembers();
	public int getSearchEmail(String email); 
}
