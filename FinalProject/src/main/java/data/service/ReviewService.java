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
	
	public int getTotalCount(String mnum)
	{
		return mapper.getTotalCount(mnum);
	}
	public ReviewDto getData(String rnum)
	{
		return mapper.getData(rnum);
	}
	public List<ReviewDto> getList(int start,int perpage, String mnum)
	{
		HashMap<String, Object> map=new HashMap<>();
		map.put("start",start);
		map.put("perpage", perpage);
		map.put("mnum", mnum);
		
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
	public int getTnum()
	{
		return mapper.getTnum();
	}
	public String getMnum(String rnum)
	{
		return mapper.getMnum(rnum);
	}
	public List<ReviewDto> getRstar(String tnum) //강진
	{
		return mapper.getRstar(tnum);
	}
	public ReviewDto getRData(String tnum)
	{
		return mapper.getRData(tnum);
	}
	public String getrstar(String tnum)
	{
		return mapper.getrstar(tnum);
	}
	
}