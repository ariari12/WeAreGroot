package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.payment.FailAction;
import kr.co.moran.web.action.payment.SuccessAction;

@WebServlet("/payment")
public class PaymentController extends HttpServlet{
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String result = req.getParameter("result");
		String url = "";
		Action action = null;
		if(result == null) {			
			System.out.println("result 값 : "+result);
		} else if(result.equals("success")) {
			action = new SuccessAction();
		}else if(result.equals("fail")) {			
			action = new FailAction();
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
