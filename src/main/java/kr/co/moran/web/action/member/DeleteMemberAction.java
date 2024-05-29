package kr.co.moran.web.action.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.MemberExitVO;
import kr.co.moran.web.vo.member.MemberVO;

public class DeleteMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String reason=req.getParameter("reason"); // 탈퇴사유
		
		HttpSession session = req.getSession(); // 회원 정보
		MemberVO vo =  (MemberVO) session.getAttribute("memberVO");
		MemberExitVO mevo = new MemberExitVO();
		mevo.setMId(vo.getMId());
		mevo.setReason(reason);
		vo.setMemberExitVO(mevo);
		MemberDAO dao = new MemberDAO();
		System.out.println("[DeleteMemberAction] reason = "+reason);
		System.out.println("[DeleteMemberAction] MemberVO = "+vo);
		
		dao.deleteMemberbyId(vo);
		session.invalidate();
		 
		return "redirect:main";
	}

}
