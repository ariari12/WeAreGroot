package kr.co.moran.web.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProductQaVO {

	private int pqaId, pqaParentId, pdId, mId, cqaId, pqaType;
	private String pqaContents, pqaRegdate;
	
	
}
