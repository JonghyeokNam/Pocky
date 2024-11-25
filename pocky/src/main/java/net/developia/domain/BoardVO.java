package net.developia.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {
	
	private Long bno;
	private Long member_id;
	
	private String title;
	private String content;
	
	private Date writeDate;
	
	private int hit;
}
