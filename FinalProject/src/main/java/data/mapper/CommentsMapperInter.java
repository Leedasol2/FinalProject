package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CommentsDto;


@Mapper
public interface CommentsMapperInter {

	public void insertOfComments(CommentsDto dto);
	public List<CommentsDto> getComments(String bnum);
	
	
	
	
}

