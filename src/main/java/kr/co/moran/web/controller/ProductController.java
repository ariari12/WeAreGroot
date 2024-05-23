package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.product.AddAction;
import kr.co.moran.web.action.product.DetailviewAction;
import kr.co.moran.web.action.product.ListviewAction;
import kr.co.moran.web.action.product.ModifyAction;

@SuppressWarnings("serial")
@WebServlet("/product")
public class ProductController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		trigger(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		trigger(req, resp);
	}
	
	private void trigger(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String act = req.getParameter("cmd");
		// System.out.println(act);
		
		Action action = null;
		
		switch (act == null ? "" : act) {
			case "list": action = new ListviewAction(); break;
			case "detail": action = new DetailviewAction(); break;
			case "modify": action = new ModifyAction(); break;
			case "add": action = new AddAction(); break;
			default: action = new ListviewAction();
		}
		
		String nextUrl = "";
		nextUrl = action.execute(req, resp);
		if(nextUrl != null) {
			System.out.println(nextUrl);
			req.getRequestDispatcher(nextUrl).forward(req, resp);
			return;
		}
		nextUrl = "jsp/product/wrong.jsp";
		req.getRequestDispatcher(nextUrl).forward(req, resp);
	}
}
