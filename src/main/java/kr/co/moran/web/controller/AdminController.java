package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.event.EventEnroll;
import kr.co.moran.web.vo.member.MemberVO;

@WebServlet("/admin")
public class AdminController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String url = "";
		String cmd = req.getParameter("cmd");
		Action action = null;
		try {
			//세션값 관리자 유효성검사
			HttpSession session = req.getSession();
			MemberVO mvo = (MemberVO)session.getAttribute("memberVO");
			if(mvo.getAdmintype() != 1) {
				url = "/member?cmd=loginForm";
			}

			if(cmd != null || cmd.equals("eventEnroll")) {
				action = new EventEnroll();
			}
			
			
			
			url = action.execute(req, resp);
			
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, resp);
			
		}catch (NullPointerException e) {
			url="/moran/jsp/template/limitsPage.jsp";
			resp.sendRedirect(url);
		}
		
		
	}
}
