package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.BoardDto;

@Mapper
public interface BoardMapperInter {
	public void insertOfBoard(BoardDto dto);
	public int getMaxBnum(); //가장 최신글 번호
	public int getBoardCnt(); //총 게시글 수
	//모든 게시글 불러오기
	public List<BoardDto> getAllBoards();
	//페이징 리스트
	public List<BoardDto> getList(HashMap<String, Integer> map); 
	
	//디테일 페이지
	public BoardDto getBoard(String bnum);
	public void viewUp(String bnum);

	public List<BoardDto> getBestList(HashMap<String, Integer> map); 
	
	//수정
	public void updateBoard(BoardDto dto);
	
	//삭제
	public void deleteBoard(String bnum);
	
	//추천
	public int getLikeCount(String bnum);
	public int isMyLike(HashMap<String, String> map);
	public void addLike(HashMap<String, String> map);
	public void delLike(HashMap<String, String> map);
	
	
	
	
	
	
	
}

