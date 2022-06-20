package data.dto;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class KMemberVO {

	private String userid;
    private String userpw;
    private String userName;

    private Date regDate;

    private String email;
    private String tel;
    private List<AuthVo> authList;

    private String snsId;
}
