package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CommentsDto;


@Mapper
public interface CommentsMapperInter {

	public void insertOfComments(CommentsDto dto);
	public List<CommentsDto> getComments(String bnum);
	
	public int getCommentsCnt(String bnum);
	
	//답글 리스트
	public List<CommentsDto> getReplyComments(String cnum);
	
	//댓글 삭제
	public void deleteComment(String cnum);
	public void deleteCommentReply(String cnum);
	
	//댓글수정
	public void updateComment(CommentsDto dto);
	
	
	
}

