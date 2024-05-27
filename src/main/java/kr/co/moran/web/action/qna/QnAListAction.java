package kr.co.moran.web.action.qna;

import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.BoardVO;

public class QnAListAction implements Action {


	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = new BoardDAO();
		String sort = req.getParameter("sort");
		
        List<HashMap<String, Object>> boardList;
        if ("viewCntDesc".equals(sort)) {
        	boardList = dao.selectAllQnAOrderByViewCntDesc();
        } else {
        	boardList = dao.selectAllQnA();
        }

        req.setAttribute("boardList", boardList);
        return "jsp/board/qnalist.jsp";
	}

}
