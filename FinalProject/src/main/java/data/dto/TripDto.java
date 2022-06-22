package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("tdto")
public class TripDto {
	
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
	private Timestamp beginday;
	private Timestamp endday;
	private String part;
	private String theme;
	private String rstar;
	private int sumrstar;
	private double avgrstar;
	private int reviewcount;
	
}
