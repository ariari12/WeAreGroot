package kr.co.moran.web.action.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class MyPageForm implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {		
		return "jsp/member/myPageForm.jsp";
	}

}
