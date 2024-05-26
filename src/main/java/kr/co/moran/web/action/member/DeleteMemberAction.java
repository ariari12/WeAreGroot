package kr.co.moran.web.action.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.vo.member.MemberVO;

public class DeleteMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String reason=req.getParameter("reason");	
		HttpSession session = req.getSession();
		MemberVO vo =  (MemberVO) session.getAttribute("memberVO");
		System.out.println("[DeleteMemberAction] reason = "+reason);
		System.out.println("[DeleteMemberAction] MemberVO = "+vo);
		/*
		 * if(session != null) { session.invalidate(); }
		 */
		return "redirect:index.jsp";
	}

}
