package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("comdto")
public class CommentsDto {
	private String cnum;
	private String mnum;
	private String bnum;
	private String content;
	private Timestamp writeday;
	private String renum;
	
}
