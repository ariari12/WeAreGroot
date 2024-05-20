package kr.co.moran.web.action.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class LoginAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		MemberDAO dao = new MemberDAO();
		MemberVO vo=dao.selectMemberByEmailAndPassword(email, password);
		System.out.println(vo);
		if(vo!=null) {
			HttpSession session = req.getSession();
			session.setAttribute("memberVO", vo);
			return "home.jsp";
		}
		return "loginForm.jsp"; //회원 로그인 실패
	}
}
