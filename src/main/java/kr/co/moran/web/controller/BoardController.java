package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.KHDeleteAction;
import kr.co.moran.web.action.KHDetailAction;
import kr.co.moran.web.action.KHListAction;
import kr.co.moran.web.action.KHUpdateAction;
import kr.co.moran.web.action.KHModifyFormAction;
import kr.co.moran.web.action.KHWriteAction;
import kr.co.moran.web.action.KHWriteFormAction;
import kr.co.moran.web.action.QnADeleteAction;
import kr.co.moran.web.action.QnADetailAction;
import kr.co.moran.web.action.QnAListAction;
import kr.co.moran.web.action.QnAUpdateAction;
import kr.co.moran.web.action.QnAModifyFormAction;
import kr.co.moran.web.action.QnAWriteAction;
import kr.co.moran.web.action.QnAWriteFormAction;

@WebServlet("/board")
public class BoardController extends HttpServlet{
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
		String btype = req.getParameter("type");
		String url = "";
		Action action = null;
		
		//qna와 노하우페이지는 board테이블의 boardtype의 영향을 받음
		
		//qna 전체보기
		if(cmd.equals("qna")) {
			action = new QnAListAction();
		}
		//qna 작성하기
		else if(cmd.equals("qnawrite")) {
			action = new QnAWriteFormAction();
		}
		//qna 작성확인
		else if(cmd.equals("qnawriteOk")) {
			action = new QnAWriteAction();
		}
		//qna 상세보기
		else if(cmd.equals("qnadetail")){
			action = new QnADetailAction();
		}
		//qna 삭제하기
		else if(cmd.equals("qnadelete")) {
			action = new QnADeleteAction();
		}
		//qna 수정하기
		else if(cmd.equals("qnamodify")) {
			action = new QnAModifyFormAction();
		}
		//qna 삭제확인
		else if(cmd.equals("qnamodifyOk")) {
			action = new QnAUpdateAction();
		}
		
		
		
		//노하우 전체보기
		if(cmd.equals("kh")) {
			action = new KHListAction();
		}
		//노하우 작성하기
		else if(cmd.equals("khwrite")) {
			action = new KHWriteFormAction();
		}
		//노하우 작성확인
		else if(cmd.equals("khwriteOk")) {
			action = new KHWriteAction();
		}
		//노하우 상세보기
		else if(cmd.equals("khdetail")){
			action = new KHDetailAction();
		}
		//노하우 삭제하기
		else if(cmd.equals("khdelete")) {
			action = new KHDeleteAction();
		}
		//노하우 수정하기
		else if(cmd.equals("khmodify")) {
			action = new KHModifyFormAction();
		}
		//노하우 삭제확인
		else if(cmd.equals("khmodifyOk")) {
			action = new KHUpdateAction();
		}
		
		url = action.execute(req, resp);
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
		
	}
	
	
}
