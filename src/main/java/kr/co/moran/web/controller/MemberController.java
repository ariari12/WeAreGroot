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
import kr.co.moran.web.action.member.FindPwMemberAction;
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
			//회원 가입 화면으로 이동
		} else if (cmd.equals("joinForm")) {
			action = new JoinFormAction();
			//회원 가입 기능 동작
		} else if (cmd.equals("joinOk")) {
			action = new JoinAction();
			//로그인 화면으로 이동
		} else if (cmd.equals("loginForm")) {
			action = new LoginFormAction();
			//로그인 기능 동작
		} else if (cmd.equals("loginOk")) {
			action = new LoginAction();
			// 로그아웃 기능 동작
		} else if (cmd.equals("logoutOk")) {
			action = new LogoutAction();
			// 이메일 인증 기능 동작
		} else if (cmd.equals("emailOk")) {
			action = new EmailAction();
			// 이메일 코드 비교 기능 동작
		} else if (cmd.equals("emailCodeOk")) {
			action = new EmailCodeAction();
			// 마이페이지 화면 이동
		} else if (cmd.equals("myPageForm")) {
			action = new MyPageForm();
			// 회원정보 수정 기능 동작
		} else if (cmd.equals("modifyMemberOk")) {
			action = new ModifyMemberAction();
			// 회원탈퇴 기능 동작
		} else if (cmd.equals("deleteMemberOk")) {			
			action = new DeleteMemberAction();
			// 회원 비밀번호 찾기 기능 동작
		} else if (cmd.equals("findMemberPwOk")) {
			action = new FindPwMemberAction();
		}

		url = action.execute(req, resp);
		System.out.println("url = " + url);
		
		// 	url에 "redirect:" 가 붙어있다면 포워드가 아닌 리다이렉트로 동작
		if (url.startsWith("redirect:")) {
			redirectUrl = url.substring("redirect:".length());
			System.out.println("redirectUrl = "+redirectUrl);
			resp.sendRedirect(redirectUrl);
			// 가입된 회원의 이메일과 동일할 경우 응답 처리 (jquery)
		} else if (url.equals("emailDuplicated")) {
			PrintWriter out = resp.getWriter();
			out.print(url);
			// 회원가입 시도한 이메일과 다를 경우 응답 처리 (jquery)
		} else if (url.equals("verifyEmailMismatch")) {
			PrintWriter out = resp.getWriter();
			out.print("verifyEmailMismatch");
			// 회원가입 시도한 이메일과 같은경우 응답 처리 (jquery)
		} else if (url.equals("verifyEmailMatch")) {
			PrintWriter out = resp.getWriter();
			out.print("verifyEmailMatch");
			// 회원가입 성공 알림 (jquery)
		} else if (url.equals("joinSuccess")) {
			PrintWriter out = resp.getWriter();
			out.print("success");
			// 회원정보를 찾을 수 없을 경우 응답 처리 (jquery)
		}else if (url.equals("emptyMember")) {
			PrintWriter out = resp.getWriter();
			out.print("emptyMember");
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
