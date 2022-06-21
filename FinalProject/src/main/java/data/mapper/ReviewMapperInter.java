package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ReviewDto;

@Mapper
public interface ReviewMapperInter {

	public int getTotalCount(String mnum);
	public ReviewDto getData(String rnum);
	public List<ReviewDto> getList(HashMap<String, Object> map);
	public void insertReview(ReviewDto dto);
	public void updateReview(ReviewDto dto);
	public void deleteReview(String rnum);
	public int getTnum();
	public String getMnum(String rnum);
	
	//강진
//	public Integer getAvgRstar(String tnum);
//	public Integer getReviewCount(String tnum);
}
