package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("mdto")
public class MemberDto {

	private String mnum;
	private String name;
	private String email;
	private String userid;
	private String password;
	private String phone;
	private String type;
	private Timestamp gaipday;
	
	public void setPassword(String password) {
		this.password = password;
	}
}
