package kr.co.moran.product.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data @ToString @Getter @Setter
public class ProductImgVO {
	private int pd_id;
	private int no;
	private String img;
}
