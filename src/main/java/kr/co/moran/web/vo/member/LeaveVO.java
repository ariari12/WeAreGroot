package kr.co.moran.web.vo.member;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LeaveVO {
	private int mId; // 회원 고유번호 참조
	private String lReason; // 탈퇴 이유
	private String lDate; // 탈퇴한 시간

}
