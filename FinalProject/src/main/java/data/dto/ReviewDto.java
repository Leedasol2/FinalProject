package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("rdto")
public class ReviewDto {
	private String rnum;
	private String mnum;
	private String tnum;
	private int rstar;
	private String rcontents;
	private Timestamp rday;
	private String title;
	private String mnum2;
}
