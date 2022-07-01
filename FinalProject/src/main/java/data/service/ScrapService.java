package data.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.ScrapDto;
import data.dto.TripDto;
import data.mapper.ScrapMapperInter;


@Service
public class ScrapService {

	@Autowired
	ScrapMapperInter smapper;
	
	public void InsertScrap(ScrapDto sdto) 
	{ 
		smapper.InsertScrap(sdto);
	}
	
	public void deleteScrap(String snum){
		smapper.deleteScrap(snum);
	}
	
	public void getSnum(String mnum, String tnum) {
		HashMap<String, String> map=new HashMap<>(); 
		map.put("mnum", mnum); 
		map.put("tnum", tnum); 
		smapper.getSnum(map);
	}
	
	public List<ScrapDto> getList(String mnum) {
		return smapper.getList(mnum);
	}
	
	public int getScrapCount(String mnum) {
		return smapper.getScrapCount(mnum);
	}

}

