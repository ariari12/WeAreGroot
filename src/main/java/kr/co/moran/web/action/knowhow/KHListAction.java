package kr.co.moran.web.action.knowhow;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.BoardVO;

public class KHListAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		BoardDAO dao = new BoardDAO();
		String sort = req.getParameter("sort");
		
		List<HashMap<String, Object>> boardList ;
        if ("viewCntDesc".equals(sort)) {
        	boardList = dao.selectAllKHOrderByViewCntDesc();
        } else {
        	boardList = dao.selectAllKH();
        }

        req.setAttribute("boardList", boardList);
        return "jsp/board/khlist.jsp";
	}

}
