package data.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.ReviewDto;
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

	public List<TripDto> getList(int start, int perpage) {

		HashMap<String, Integer> map = new HashMap<>();
		map.put("start", start);
		map.put("perpage", perpage);
		return tripMapper.getList(map);
	}

	public List<TripDto> getAllTrips() {
		return tripMapper.getAllTrips();
	}

	public List<TripDto> getRegionList(String region) {
		return tripMapper.getRegionList(region);
	}

	public List<TripDto> getThemeList(String theme) {

		return tripMapper.getThemeList(theme);
	}

	public List<TripDto> getAllActivitys(String part) {
		return tripMapper.getAllActivitys(part);
	}

	public List<TripDto> getRegionThemeList(String part, String region) {

		TripDto tdto = new TripDto();

		tdto.setPart(part);
		tdto.setRegion(region);

		return tripMapper.getRegionThemeList(tdto);
	}

	public List<TripDto> getReadCountList() {
		return tripMapper.getReadCountList();
	}

	public List<TripDto> getReviewList() {
		return tripMapper.getReviewList();
	}

	public List<TripDto> getHighRstarList() {
		return tripMapper.getHighRstarList();
	}

	public List<TripDto> getLowRstarList() {
		return tripMapper.getLowRstarList();
	}

	public List<TripDto> getSearch(String title) {
		return tripMapper.getSearch(title);
	}

}
