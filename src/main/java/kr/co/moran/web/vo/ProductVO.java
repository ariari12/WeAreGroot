package kr.co.moran.web.vo;

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
	private int pId;
	private int cId;
	private String name;
	private int price;
	private String description;
	private int quantity;
	private int wholesale;
	private int dcRate;
	private Date createDate;
	private int isMaintain;
	private Date retetionDate;
}
