package data.mapper;


import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import data.dto.ScrapDto;

@Mapper
public interface ScrapMapperInter {

	public void InsertScrap(ScrapDto sdto);
	
	public void deleteScrap(String snum);	

	public int getFindScrap(HashMap<String, String> map);
	
	public String getSnum(HashMap<String, String> map);	
}