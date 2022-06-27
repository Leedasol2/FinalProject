package data.mapper;


import org.apache.ibatis.annotations.Mapper;

import data.dto.ScrapDto;

@Mapper
public interface ScrapMapperInter {

	public void InsertScrap(ScrapDto sdto);
}