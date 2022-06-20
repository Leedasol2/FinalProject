package data.dto;

import java.sql.Timestamp;
import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("cdto")
public class CalendarDto {
	private String schenum;
	private String mnum;
	private String content;
	private Timestamp beginday;
	private Timestamp endday;
	private String schecolor;
}
