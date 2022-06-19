package data.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.TripDto;
import data.mapper.TripMapperInter;

@Service
public class TripService {

	@Autowired
	TripMapperInter tripMapper;
	
	public TripDto getData(String tnum) {
		
		return tripMapper.getData(tnum);
	}
	
	public void updateReadCount(String tnum) {
		
		tripMapper.updateReadCount(tnum);
	}
	
	public List<TripDto> getList(int start, int perpage){
		
		HashMap<String, Integer> map=new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		return tripMapper.getList(map);
	}
	
	public List<TripDto> getAllTrips(){
		return tripMapper.getAllTrips();
	}
	
	public List<TripDto> regionList(int start, int perpage){
		
		HashMap<String, Integer> map2=new HashMap<>();
		map2.put("start", start);
		map2.put("perpage", perpage);
		return tripMapper.regionList(map2);
	}

	public List<TripDto> themeList(int start, int perpage){
	
		HashMap<String, Integer> map3=new HashMap<>();
		map3.put("start", start);
		map3.put("perpage", perpage);
		return tripMapper.themeList(map3);
}
}
