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
import kr.co.moran.web.action.cart.AddCartAction;
import kr.co.moran.web.action.cart.CartFormAction;
import kr.co.moran.web.action.cart.CartListAction;
import kr.co.moran.web.action.cart.DeleteCartAction;
import kr.co.moran.web.action.cart.CntChange;

@WebServlet("/cart")
public class CartController extends HttpServlet{
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		String cmd = req.getParameter("cmd");
		String url = "";
		Action action = null;
		
		if (cmd == null || cmd.equals("list")) {
			action = new CartListAction();
		} else if(cmd.equals("cartForm")) {
			action = new CartFormAction();
		} else if(cmd.equals("cntChange")) {
			out.println(new CntChange().execute(req, resp));
			return;
		} else if(cmd.equals("addProduct")) {
			out.println(new AddCartAction().execute(req, resp));
			return;
		} else if(cmd.equals("deleteProduct")) {
			out.println(new DeleteCartAction().execute(req, resp));
			return;
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
