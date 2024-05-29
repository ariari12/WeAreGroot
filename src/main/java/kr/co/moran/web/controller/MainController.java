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
import kr.co.moran.web.action.IndexFormAction;


@WebServlet("/main")
public class MainController extends HttpServlet {
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");

		String cmd = req.getParameter("cmd");
		System.out.println("cmd = " + cmd); // 콘솔 확인용
		String url = "";
		String redirectUrl = "";
		Action action = null;
		if (cmd == null || cmd.equals("indexForm")) {
			System.out.println("cmd 값 : " + cmd);
			action = new IndexFormAction();
		}

		url = action.execute(req, resp);
		System.out.println("url = " + url);
		if (url.startsWith("redirect:")) {
			redirectUrl = url.substring("redirect:".length());
			resp.sendRedirect(redirectUrl);
		} else if (url.equals("emailDuplicated")) {
			PrintWriter out = resp.getWriter();
			out.print(url);
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
