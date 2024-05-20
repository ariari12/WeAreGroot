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
	private int pd_id;
	private int c_id;
	private String pd_name;
	private int pd_price;
	private String pd_description;
	private int pd_quantity;
	private int pd_wholesals;
	private int pd_dcRate;
	private int pd_isMaintain;
	private Date pd_retetionDate;
}
