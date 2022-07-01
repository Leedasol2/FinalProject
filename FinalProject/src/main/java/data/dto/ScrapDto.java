package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("sdto")
public class ScrapDto {
	
	private String snum;
	private String mnum;
	private String tnum;
	
	
	//출력용
	private String title;
	private String image;
	private String part;
	
}
