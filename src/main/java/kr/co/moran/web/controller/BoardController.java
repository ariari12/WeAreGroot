package kr.co.moran.web.controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.action.KnowHow.KHDeleteAction;
import kr.co.moran.web.action.KnowHow.KHDetailAction;
import kr.co.moran.web.action.KnowHow.KHListAction;
import kr.co.moran.web.action.KnowHow.KHModifyFormAction;
import kr.co.moran.web.action.KnowHow.KHModifyLikeCntAction;
import kr.co.moran.web.action.KnowHow.KHModifyViewCntAction;
import kr.co.moran.web.action.KnowHow.KHModifyAction;
import kr.co.moran.web.action.KnowHow.KHWriteAction;
import kr.co.moran.web.action.KnowHow.KHWriteFormAction;
import kr.co.moran.web.action.QnA.QnADeleteAction;
import kr.co.moran.web.action.QnA.QnADetailAction;
import kr.co.moran.web.action.QnA.QnAListAction;
import kr.co.moran.web.action.QnA.QnAModifyFormAction;
import kr.co.moran.web.action.QnA.QnAModifyLikeCntAction;
import kr.co.moran.web.action.QnA.QnAModifyViewCntAction;
import kr.co.moran.web.action.QnA.QnAModifyAction;
import kr.co.moran.web.action.QnA.QnAWriteAction;
import kr.co.moran.web.action.QnA.QnAWriteFormAction;

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
		else if(cmd.equals("qnaWrite")) {
			action = new QnAWriteFormAction();
		}
		//qna 작성확인
		else if(cmd.equals("qnaWriteOk")) {
			action = new QnAWriteAction();
		}
		//qna 상세보기
		else if(cmd.equals("qnaDetail")){
			action = new QnADetailAction();
		}
		//qna 삭제하기
		else if(cmd.equals("qnaDelete")) {
			action = new QnADeleteAction();
		}
		//qna 수정하기
		else if(cmd.equals("qnaModify")) {
			action = new QnAModifyFormAction();
		}
		//qna 삭제확인
		else if(cmd.equals("qnaModifyOk")) {
			action = new QnAModifyAction();
		}
		else if(cmd.equals("qnaModifyLikeCnt")) {
			action = new QnAModifyLikeCntAction();
		}
		else if(cmd.equals("qnaModifyViewCnt")) {
			action = new QnAModifyViewCntAction();
		}
		
		
		
		//노하우 전체보기
		if(cmd.equals("kh")) {
			action = new KHListAction();
		}
		//노하우 작성하기
		else if(cmd.equals("khWrite")) {
			action = new KHWriteFormAction();
		}
		//노하우 작성확인
		else if(cmd.equals("khWriteOk")) {
			action = new KHWriteAction();
		}
		//노하우 상세보기
		else if(cmd.equals("khDetail")){
			action = new KHDetailAction();
		}
		//노하우 삭제하기
		else if(cmd.equals("khDelete")) {
			action = new KHDeleteAction();
		}
		//노하우 수정하기
		else if(cmd.equals("khModify")) {
			action = new KHModifyFormAction();
		}
		//노하우 삭제확인
		else if(cmd.equals("khModifyOk")) {
			action = new KHModifyAction();
		}
		else if(cmd.equals("khModifyLikeCnt")) {
			action = new KHModifyLikeCntAction();
		}
		else if(cmd.equals("khModifyViewCnt")) {
			action = new KHModifyViewCntAction();
		}
		
		url = action.execute(req, resp);
		
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
		
	}
	
	
}
