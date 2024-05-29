package kr.co.moran.web.controller;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.member.DeleteMemberAction;
import kr.co.moran.web.action.member.EmailAction;
import kr.co.moran.web.action.member.EmailCodeAction;
import kr.co.moran.web.action.member.JoinAction;
import kr.co.moran.web.action.member.JoinFormAction;
import kr.co.moran.web.action.member.LoginAction;
import kr.co.moran.web.action.member.LoginFormAction;
import kr.co.moran.web.action.member.LogoutAction;
import kr.co.moran.web.action.member.ModifyMemberAction;
import kr.co.moran.web.action.member.MyPageForm;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");

		String cmd = req.getParameter("cmd");
		System.out.println("cmd = " + cmd); // 콘솔 확인용
		String url = "";
		String redirectUrl = "";
		Action action = null;
		if (cmd == null) {
			System.out.println("cmd 값 : " + cmd);
			resp.sendRedirect("index.jsp"); // 할지 안할지
			return;
		} else if (cmd.equals("joinForm")) {
			action = new JoinFormAction();
		} else if (cmd.equals("joinOk")) {
			action = new JoinAction();
		} else if (cmd.equals("loginForm")) {
			action = new LoginFormAction();
		} else if (cmd.equals("loginOk")) {
			action = new LoginAction();
		} else if (cmd.equals("logoutOk")) {
			action = new LogoutAction();
		} else if (cmd.equals("emailOk")) {
			action = new EmailAction();
		} else if (cmd.equals("emailCodeOk")) {
			action = new EmailCodeAction();
		} else if (cmd.equals("myPageForm")) {
			action = new MyPageForm();
		} else if (cmd.equals("modifyMemberOk")) {
			action = new ModifyMemberAction();
		} else if (cmd.equals("deleteMemberOk")) {
			action = new DeleteMemberAction();
		}

		url = action.execute(req, resp);
		System.out.println("url = " + url);
		if (url.startsWith("redirect:")) {
			redirectUrl = url.substring("redirect:".length());
			System.out.println("redirectUrl = "+redirectUrl);
			resp.sendRedirect(redirectUrl);
		} else if (url.equals("emailDuplicated")) {
			PrintWriter out = resp.getWriter();
			out.print(url);
		} else if (url.equals("verifyEmailMismatch")) {
			PrintWriter out = resp.getWriter();
			out.print("verifyEmailMismatch");
		} else if (url.equals("verifyEmailMatch")) {
			PrintWriter out = resp.getWriter();
			out.print("verifyEmailMatch");
		} else if (url.equals("joinSuccess")) {
			PrintWriter out = resp.getWriter();
			out.print("success"); //회원가입 성공
		} else {
			RequestDispatcher rd = req.getRequestDispatcher(url);
			rd.forward(req, resp);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
}
