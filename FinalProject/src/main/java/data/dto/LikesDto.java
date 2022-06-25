package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("ldto")
public class LikesDto {

	private String lnum;
	private String bnum;
	private String mnum;
	
	
}
