package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.JoinAction;
import kr.co.moran.web.action.JoinFormAction;
import kr.co.moran.web.action.LoginAction;
import kr.co.moran.web.action.LoginFormAction;

@WebServlet("/member")
public class MemeberController extends HttpServlet{
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String cmd = req.getParameter("cmd");
		System.out.println(cmd); // 콘솔 확인용
		String url = "";
		Action action = null;
		if(cmd == null) {			
			System.out.println("cmd 값 : "+cmd);
		}else if(cmd.equals("joinForm")) {
			action = new JoinFormAction();
		}else if(cmd.equals("joinOk")) {			
			action = new JoinAction();
		}else if(cmd.equals("loginForm")) {
			action = new LoginFormAction();
		}else if(cmd.equals("loginOk")) {
			action = new LoginAction();
		}
		
		url = action.execute(req, resp);
		System.out.println("url = "+url);
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);

	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
}
