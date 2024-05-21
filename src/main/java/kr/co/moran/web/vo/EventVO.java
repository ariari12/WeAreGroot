package kr.co.moran.web.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class EventVO {

	private int eId;
	private int mId;
	private int pdId;
	private String title;
	private String contents;
	private Date writedate;
	private Date start;
	private Date end;
	
	
}
