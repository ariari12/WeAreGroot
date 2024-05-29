package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.comment.CommentDeleteAction;
import kr.co.moran.web.action.event.EventDetailAction;
import kr.co.moran.web.action.event.EventListAction;

@WebServlet("/event")
public class EventController extends HttpServlet{
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String act = req.getParameter("eId");
		String cmd = req.getParameter("cmd");
		String url = "";
		Action ac = null;
		
		if(act==null || act.equals("")) {
			ac = new EventListAction();
			
		}
	
		if(act != null ){
			int eId = Integer.parseInt(act);
			ac = new EventDetailAction(eId);
		}
		
		url = ac.execute(req, resp);
		req.getRequestDispatcher(url).forward(req, resp);
		
		
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
