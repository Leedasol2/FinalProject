package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.ScrapDto;
import data.mapper.ScrapMapperInter;


@Service
public class ScrapService {

	@Autowired
	ScrapMapperInter smapper;
	
	public void InsertScrap(ScrapDto sdto) 
	{ 
		smapper.InsertScrap(sdto);
	}

}
