package kr.co.moran.web.action;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.vo.member.MemberVO;

public interface Action {
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException;
}
