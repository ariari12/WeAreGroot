package kr.co.moran.web.action.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String email = req.getParameter("email");
		String password = req.getParameter("pw");
		MemberDAO dao = new MemberDAO();
		MemberVO vo=dao.selectMemberByEmailAndPassword(email, password);
		
		if(vo!=null) {
			System.out.println("[LoginAction] MemberVO = "+vo);
			HttpSession session = req.getSession();
			session.setAttribute("memberVO", vo);
			System.out.println(session.getAttribute("memberVO"));
			//회원 로그인 성공
			System.out.println("로그인 성공");
			return "redirect:main";
		}else {
			System.out.println("로그인 실패");
		}
		return "jsp/member/loginForm.jsp";
	}
}