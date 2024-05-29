package kr.co.moran.web.vo.cart;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CartVO {

	private int cId;	// 카트 번호
	private int mId;	// 회원 번호
	private int cnt;	// 상품 수량
	private int pId;	// 상품 번호
}