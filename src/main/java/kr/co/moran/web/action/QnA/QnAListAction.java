package kr.co.moran.web.action.QnA;

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
		
        List<BoardVO> list;
        if ("viewCntDesc".equals(sort)) {
            list = dao.selectAllQnAOrderByViewCntDesc();
        } else {
            list = dao.selectAllQnA();
        }

        req.setAttribute("list", list);
        return "views/qnalist.jsp";
	}

}
