package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class CategoryQaVO {
	private int cqaId;
	private String cqaName;
	//cqaName: 상품 prd|배송 dlv|반품 tib |교환 sw|환불 rfd|기타 etc		   
	
}
