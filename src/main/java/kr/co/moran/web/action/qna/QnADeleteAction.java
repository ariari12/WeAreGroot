package kr.co.moran.web.action.qna;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;

public class QnADeleteAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		int bId = Integer.parseInt(req.getParameter("bId"));
		BoardDAO dao = new BoardDAO();

		dao.deleteBoardBybId(bId);
		
		return "/board?cmd=qna";
	}

}
