package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.product.AddAction;
import kr.co.moran.web.action.product.DeleteAction;
import kr.co.moran.web.action.product.DetailviewAction;
import kr.co.moran.web.action.product.ListviewAction;
import kr.co.moran.web.action.product.ModifyAction;
import kr.co.moran.web.vo.member.MemberVO;

@WebServlet("/prodcut/keep")
public class KeepController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		process(req, resp);
	}
	
	private void process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String act = req.getParameter("cmd");
		// System.out.println(act);
		
		MemberVO memberCheck = (MemberVO)req.getSession().getAttribute("memberVO");
		if(memberCheck == null) {
//			System.out.println("product memberChekc is null: " + memberCheck);
		}
		
		// 미구현
		Action action = null;
		switch (act == null ? "" : act) {
//			case "list": action = new ListviewAction(); break;
//			case "detail": action = new DetailviewAction(); break;
//			case "modify": action = new ModifyAction(); break;
//			case "add": action = new AddAction(); break;
//			case "delete": action = new DeleteAction(); break;
			default: action = new ListviewAction();
		}
		
		String nextUrl = "";
		nextUrl = action.execute(req, resp);
		if(nextUrl == null) {
			nextUrl = "jsp/product/wrong.jsp";
		}
		if(nextUrl.equals("ajax")) {
			// ajax 요청 반환 시 forard 안함
			return;
		}
		
		System.out.println(nextUrl);
		req.getRequestDispatcher(nextUrl).forward(req, resp);
	}
}
