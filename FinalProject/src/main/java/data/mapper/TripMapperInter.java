package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.TripDto;

@Mapper
public interface TripMapperInter {

	public int getTotalCount(String fesday);
	//public String getEndday();
	
	
	public void updateReadCount(String tnum);
	public List<TripDto> getList();
	public TripDto getData(String tnum);
	public String getTitle(String tnum); //by은비
	public List<TripDto> getRegionList(String region);
	public List<TripDto> getThemeList(String theme);
	
	public List<TripDto> getRegionSortList(String region);
	public List<TripDto> getRegionhrstarList(String region);
	public List<TripDto> getRegionlrstarList(String region);
	public List<TripDto> getRegionCountList(String region);
	
	public List<TripDto> getThemeSortList(String theme);
	public List<TripDto> getThemehrstarList(String theme);
	public List<TripDto> getThemelrstarList(String theme);
	public List<TripDto> getThemeCountList(String theme);
	
	//동현
	public List<TripDto> getAllTrips(); 
	public List<TripDto> getAllActivitys(String part);
	public List<TripDto> getSearch(String title);
	
	//용기
	public List<TripDto> getRegionThemeList(TripDto tdto);
}