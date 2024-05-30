package kr.co.moran.web.vo.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductCartVO {

	// PRODUCT TABLE
	private int pId;
    private int cId;
	private String pName;
	private int pPrice;
	private int pQuantity;
	private int pWholesale;
	private int pDcrate;
	private int pIsMaintain;
	
	// PRODUCT_IMG TABLE
	private String pImg;
	
	// MEMBER_CART TABLE 
	private int mId;
	private int mCnt;
	
	int cnt;
}