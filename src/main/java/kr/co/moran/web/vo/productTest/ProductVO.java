package kr.co.moran.web.vo.productTest;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	// PRODUCT
	private int pId;
	private String pName;
	private int pPrice;
	private int pQuantity;
	private int pWholesale;
	private int pDcrate;
	private int pIsMaintain;
	
	// PRODUCT_IMG
	private String img;
	
	// CNT
	private int cnt;
	
	
	
}
