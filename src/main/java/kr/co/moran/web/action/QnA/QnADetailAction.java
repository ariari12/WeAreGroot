package kr.co.moran.web.action.QnA;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.BoardVO;

public class QnADetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String sbId = req.getParameter("bId");
		int bId = Integer.parseInt(sbId);
		
		BoardVO vo = new BoardVO();
		BoardDAO dao = new BoardDAO();
		vo = dao.selectQnABybId(bId);
		req.setAttribute("vo", vo);
		return "views/qnaDetail.jsp";
	}

}
