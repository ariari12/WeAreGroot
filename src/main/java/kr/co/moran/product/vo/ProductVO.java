package kr.co.moran.product.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data @Getter @Setter @ToString
public class ProductVO {
	private int id;
	private int c_id;
	private String name;
	private int price;
	private String desc;
	private int quantity;
	private int wholesals;
	private int dcRate;
	private int isMaintain;
	private Date retetionDate;
}
