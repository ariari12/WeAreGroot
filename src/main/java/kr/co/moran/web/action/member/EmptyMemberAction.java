package kr.co.moran.web.action.member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;

public class EmptyMemberAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("notMember", "회원정보가 존재하지 않습니다");
		System.out.println("[EmptyMemberAction]");
		return "jsp/member/loginForm.jsp";
	}
	
}
