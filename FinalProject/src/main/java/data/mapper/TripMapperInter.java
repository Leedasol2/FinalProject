package data.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.TripDto;

@Mapper
public interface TripMapperInter {

	public int getTotalCount();
	public void updateReadCount(String tnum);
	public List<TripDto> getList(HashMap<String, Integer> map);
	public TripDto getData(String tnum);
	public String getTitle(String tnum); //by은비
	public List<TripDto> getAllTrips(); //동현
}
