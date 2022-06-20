package data.service;

import java.util.HashMap;
import java.util.List;

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
	public int getBoardCnt() {
		return mapper.getBoardCnt();
		
	}
	public List<BoardDto> getAllBoards(){
		return mapper.getAllBoards();
	}
	
	public List<BoardDto> getList(int start,int perpage){ 
		HashMap<String, Integer> map=new HashMap<>(); 
		map.put("start", start); 
		map.put("perpage", perpage); 
		return mapper.getList(map);
	}
	
	public BoardDto getBoard(String bnum) {
		return mapper.getBoard(bnum);
	}
	
	public void viewUp(String bnum) {
		mapper.viewUp(bnum);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
