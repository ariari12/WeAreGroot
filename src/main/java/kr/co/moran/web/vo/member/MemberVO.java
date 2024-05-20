package kr.co.moran.web.vo.member;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private int mId; //회원 고유 번호
	private String mEmail; //회원 이메일
	private String mPw; // 회원 비밀번호
	private String mName; // 회원 이름
	private String mProfileImg; // 회원 프로필 이미지
	private String mNick; // 회원 닉네임
	private String mPhone; // 회원 전화번호
	private String mRegdate; // 회원 가입일
	private String mLogtype; // 로그인 타입
	private String mAdmintype; // 관리자 유무
	private int mIsMaintain;// 정보 상태
	private String mRetentionPeriod; // 삭제한 회원 정보 보관 기간
	private String mBirth; // 회원 생일
	
	//변수명 정보상태, 삭제한 날짜, 관리자 유무 db 칼럼 이름 변경, Date 타입 정하기
}
