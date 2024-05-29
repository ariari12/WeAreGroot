package kr.co.moran.web.action.qna;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;

public class QnAModifyAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = new BoardDAO();
		String sbId = req.getParameter("bId");
		System.out.println(sbId);
		int bId = Integer.parseInt(sbId);
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");

		dao.modifyBoardBybId(bId, title, contents);
		
	
		return "board?cmd=qna";
	}

}
