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

	public List<TripDto> regionList(HashMap<String, Integer> map2);
	public List<TripDto> themeList(HashMap<String, Integer> map3);
	
	//동현
	public List<TripDto> getAllTrips(); 
	public List<TripDto> getAllActivitys(String part);
	
	//용기
	public List<TripDto> getAllList(); 
	public List<TripDto> getAllThemePark(String part, String region);


}
