package kr.co.moran.web.vo.order;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderVO {
	private int oId;
	private int mId;
	private int pdId;
	private String date;
	private int total;
	private int cnt;
	private int status;
	private String memo;
	private String uuid;
	private String name;
	private String phone;
	private int zipcode;
	private String address;
	private String addressDetail;
	private String pdName;
	
	// ORDER CANCLE;
	private int ocId;
	private String ocReason;
	private String ocData;
	
	// IMG
	private String img;
}
