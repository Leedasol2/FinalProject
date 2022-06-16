package data.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.ReviewDto;
import data.mapper.ReviewMapperInter;

@Service
public class ReviewService {

	@Autowired
	ReviewMapperInter mapper;
	
	public int getTotalCount()
	{
		return mapper.getTotalCount();
	}
	public ReviewDto getData(String rnum)
	{
		return mapper.getData(rnum);
	}
	public List<ReviewDto> getList(int start,int perpage)
	{
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start",start);
		map.put("perpage", perpage);
		
		return mapper.getList(map);
	}
	public void insertReview(ReviewDto dto)
	{
		mapper.insertReview(dto);
	}
	public void updateReview(ReviewDto dto)
	{
		mapper.updateReview(dto);
	}
	public void deleteReview(String rnum)
	{
		mapper.deleteReview(rnum);
	}
}