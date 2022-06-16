package data.mapper;

import org.apache.ibatis.annotations.Mapper;

import data.dto.TripDto;

@Mapper
public interface TripMapperInter {

	public TripDto getData(String tnum);
	public String getTitle(String tnum); //by은비
}
