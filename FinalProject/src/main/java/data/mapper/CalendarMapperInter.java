package data.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import data.dto.CalendarDto;

@Mapper
public interface CalendarMapperInter {

	public void insertSchedule(CalendarDto dto);
	public List<CalendarDto> getScheList(String mnum);
	public void deleteSchedule(String schenum);
	public void updateSchedule(CalendarDto dto);
	public CalendarDto getSchedule(String schenum);
}
