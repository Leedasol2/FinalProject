package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.TripDto;
import data.mapper.TripMapperInter;

@Service
public class TripService {

	@Autowired
	TripMapperInter TripMapper;
	
	public TripDto getData(String tnum) {
		
		return TripMapper.getData(tnum);
	}
}
