package data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.CalendarDto;
import data.mapper.CalendarMapperInter;

@Service
public class CalendarService {

	@Autowired
	CalendarMapperInter mapper;

	public void insertSchedule(CalendarDto dto)
	{
		mapper.insertSchedule(dto); 
	}
	public List<CalendarDto> getScheList(String mnum)
	{
		return mapper.getScheList(mnum);
	}
	public void deleteSchedule(String schenum)
	{
		mapper.deleteSchedule(schenum);
	}
	public void updateSchedule(CalendarDto dto)
	{
		mapper.updateSchedule(dto);
	}
	public CalendarDto getSchedule(String schenum)
	{ 
		return mapper.getSchedule(schenum);
	}
	
}
