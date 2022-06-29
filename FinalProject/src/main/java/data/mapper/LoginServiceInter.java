package data.mapper;

import java.util.List;
import java.util.Map;

public interface LoginServiceInter {
	public boolean login(String id, String password);
	public List<Map<String, Object>> getLoginInfo(String userid);
	public int checkKakaoMember(String userid);
	public boolean checkId(String name, String email);
	public String findId(String name, String email);
	public boolean checkPassword(String name, String id, String email);
	public void changePassword(String id, String password);
}
