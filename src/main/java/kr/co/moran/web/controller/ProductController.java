package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.product.DetailviewAction;
import kr.co.moran.web.action.product.ListviewAction;

@SuppressWarnings("serial")
@WebServlet("/product") // prameterName: 'act'
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
			case "latest": action = new ListviewAction(); break;
			case "popul": action = new ListviewAction(); break;
			case "1": action = new ListviewAction(); break;
			case "2": action = new ListviewAction(); break;
			default: action = new ListviewAction();
		}
		
		String nextUrl = "";
		if(action != null) {
			nextUrl = action.execute(req, resp);
		}
		req.getRequestDispatcher(nextUrl).forward(req, resp);
	}
}
