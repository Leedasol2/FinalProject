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
}
