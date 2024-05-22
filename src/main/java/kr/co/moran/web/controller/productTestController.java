package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.member.JoinAction;
import kr.co.moran.web.action.member.JoinFormAction;
import kr.co.moran.web.action.member.LoginAction;
import kr.co.moran.web.action.member.LoginFormAction;
import kr.co.moran.web.action.member.LogoutAction;
import kr.co.moran.web.action.productTest.DetailAction;

@WebServlet("/productTest")
public class productTestController extends HttpServlet{
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String cmd = req.getParameter("cmd");
		String url = "";
		
		Action action = null;
		if(cmd == null) {			
			System.out.println("cmd 값 : "+cmd);
		}else if(cmd.equals("detail")) {
			action = new DetailAction();
		}
		
		url = action.execute(req, resp);
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
