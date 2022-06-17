package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.BoardDto;
import data.mapper.BoardMapperInter;

@Service
public class BoardService {

	@Autowired
	BoardMapperInter mapper;
	
	public void insertOfBoard(BoardDto dto) {
		mapper.insertOfBoard(dto);
	}
	
	public int getMaxBnum() {
		return mapper.getMaxBnum();
	}
	

	
}
