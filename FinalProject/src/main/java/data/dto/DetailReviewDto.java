package data.dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
@Alias("drdto")
public class DetailReviewDto {
	private String rnum;
	private String mnum;
	private String tnum;
	private int rstar;
	private String rcontents;
	
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Timestamp rday;
	
	private String userid;
}
