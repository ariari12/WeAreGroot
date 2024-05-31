
package kr.co.moran.web.vo.member;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private int mId; //회원 고유 번호
	private String email; //회원 이메일	
	private String pw; // 회원 비밀번호
	private String name; // 회원 이름
	private String profileImg; // 회원 프로필 이미지
	private String nick; // 회원 닉네임
	private String phone; // 회원 전화번호
	private String regdate; // 회원 가입일
	private int logtype; // 로그인 타입
	private int admintype; // 관리자 유무
	private int isMaintain;// 정보 상태
	private String retentionPeriod; // 삭제한 회원 정보 보관 기간
	private String birth; // 회원 생일
	private String gender; // 성별
	
	private AddressVO addressVO; //주소정보
	private MemberExitVO memberExitVO; //탈퇴 이유
	
	
	//변수명 정보상태, 삭제한 날짜, 관리자 유무 db 칼럼 이름 변경, Date 타입 정하기
}