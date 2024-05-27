package kr.co.moran.web.controller;

import java.io.IOException;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.review.ReviewModifyAction;
import kr.co.moran.web.action.review.ReviewModifyFormAction;
import kr.co.moran.web.action.review.ReviewWriteAction;
import kr.co.moran.web.action.review.ReviewWriteFormAction;

@WebServlet("/review")
public class ReviewController extends HttpServlet{
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
		System.out.println(cmd);
		String url = "";
		Action action = null;
		
		if(cmd.equals("write")) {
			action = new ReviewWriteFormAction();
		}
		else if(cmd.equals("modify")) {
			action = new ReviewModifyFormAction();
		}
		else if(cmd.equals("modifyOk")) {
			action = new ReviewModifyAction();
		}
		
		url = action.execute(req, resp);
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
	}
}
