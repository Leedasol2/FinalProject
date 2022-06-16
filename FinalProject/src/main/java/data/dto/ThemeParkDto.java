package data.dto;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("pdto")
public class ThemeParkDto {
	private String tnum;
	private String region;
	private String title;
	private String intro;
	private String location;
	private String link;
	private String contents;
	private String latitude;
	private String longitude;
	private String image;
	private String price;
	private String part;


}
