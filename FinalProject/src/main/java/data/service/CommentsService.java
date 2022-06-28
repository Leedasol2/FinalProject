package data.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.CommentsDto;
import data.mapper.CommentsMapperInter;


@Service
public class CommentsService {

	@Autowired
	CommentsMapperInter mapper;
	
	public void insertOfComments(CommentsDto dto) {
		mapper.insertOfComments(dto);
	}
	
	public List<CommentsDto> getComments(String bnum){
		
		return mapper.getComments(bnum);
	}
	
	public int getCommentsCnt(String bnum) {
		return mapper.getCommentsCnt(bnum);
	}
	
	public List<CommentsDto> getReplyComments(String cnum){
		return mapper.getReplyComments(cnum);
	}
	
	public void deleteComment(String cnum) {
		mapper.deleteComment(cnum);
	}
	public void deleteCommentReply(String cnum) {
		mapper.deleteCommentReply(cnum);
	}
	
	public void updateComment(CommentsDto dto) {
		mapper.updateComment(dto);
	}
	
	
}
