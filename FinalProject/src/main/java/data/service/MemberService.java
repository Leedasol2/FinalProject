package data.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.mapper.MemberMapperInter;

@Service
public class MemberService {

	@Autowired
	MemberMapperInter mapper;
	
	public String getMnum(String myid) {
		return mapper.getMnum(myid);
	}
	public String getUserId(String mnum) {
		return mapper.getUserId(mnum);
	}
	
	
}
