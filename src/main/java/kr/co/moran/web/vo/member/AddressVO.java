package kr.co.moran.web.vo.member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AddressVO {
	private int aId; // 주소 고유번호
	private int mId; // 회원 고유번호 참조
	private String zipcode; // 우편번호
	private String addr1; // 주소 
	private String addr2; // 상세 주소
}