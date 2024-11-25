package net.developia.domain;

import lombok.Data;

@Data
public class MemberVO {

	private Long id;
	private Long club_id;
	
	private String password;
	private String username;
	private String phone_num;
	
}
