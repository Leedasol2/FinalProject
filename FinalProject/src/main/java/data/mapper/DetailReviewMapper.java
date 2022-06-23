package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.DetailReviewDto;

@Mapper
public interface DetailReviewMapper {

	public int getTotalCount(String tnum);
	public List<DetailReviewDto> getList(String tnum);
	public void deleteDetailReview(String rnum);
	public DetailReviewDto getReview(String rnum);
	public void updateDetailReview(DetailReviewDto dto);
	public void insertDetailReview(DetailReviewDto dto);
}
