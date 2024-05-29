package kr.co.moran.web.vo.productTest;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductVO {
	// PRODUCT
	private int cId;
	private String createdAt;
	private int dcrate;
	private String description;
	private int id;
	private int isMaintain;
	private String name;
	private int price;
	private int quantity;
	private String retentionPeriod;
	private int wholesale;
	
	// PRODUCT_IMG
	private String img;
	private int no;
}
