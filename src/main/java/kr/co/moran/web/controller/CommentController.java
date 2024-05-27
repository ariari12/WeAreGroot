package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.comment.CommentDeleteAction;
import kr.co.moran.web.action.comment.CommentModifyAction;
import kr.co.moran.web.action.comment.CommentModifyLikeCntAction;
import kr.co.moran.web.action.comment.CommentWriteAction;

@WebServlet("/comment")
public class CommentController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String cmd = req.getParameter("cmd");
		String url = "";
		Action action = null;
		
		if(cmd.equals("commentWrite")){
			action = new CommentWriteAction();
		}else if(cmd.equals("commentModify")) {
			action = new CommentModifyAction();
		}else if(cmd.equals("commentDelete")) {
			action = new CommentDeleteAction();
		}else if(cmd.equals("commentModifyLikeCnt")) {
			action = new CommentModifyLikeCntAction();
		}
		
		url = action.execute(req, resp);
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
	}
}
