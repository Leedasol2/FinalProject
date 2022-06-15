package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("bdto")
public class BoardDto {

	private String bnum;
	private String mnum;
	private String subject;
	private String content;
	private String photo;
	private int likes;
	private String likesuser;
	private int views;
	private Timestamp writeday;
	
}
