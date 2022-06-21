package data.service;

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
	
	
	
	
}
