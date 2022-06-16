package data.mapper;

import org.apache.ibatis.annotations.Mapper;

import data.dto.BoardDto;

@Mapper
public interface BoardMapperInter {
	public void insertOfBoard(BoardDto dto);
	public int getMaxBnum(); //가장 최신글 번호
	
	//id로 mnum 구하기
	public String getMnum(String myid);
	
}

