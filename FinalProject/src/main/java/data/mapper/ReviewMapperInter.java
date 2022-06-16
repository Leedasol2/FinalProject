package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {

	public int getTotalCount();
	public ReviewDto getData(String rnum);
	public List<ReviewDto> getList(HashMap<String, Integer> map);
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(String rnum);
	public int getTnum();
}
