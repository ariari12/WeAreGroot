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
	private String oDate;
	private int oTotal;
	private int oCnt;
	private int oStatus;
	private String oUuid;
	
	// ORDER CANCLE;
	private int ocId;
	private String ocReason;
	private String ocData;
}
