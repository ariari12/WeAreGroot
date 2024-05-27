package kr.co.moran.web.action.knowhow;

import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.CommentVO;

public class KHDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String sbId = req.getParameter("bId");
		int bId = Integer.parseInt(sbId);
		
		BoardDAO boardDAO = new BoardDAO();
		CommentDAO commentDAO = new CommentDAO();  
		
		HashMap<String, Object> boardVO = new HashMap<String, Object>();

		boardVO = boardDAO.selectBoardBybId(bId);
		List<CommentVO> commentList = commentDAO.selectCommentBybId(bId);
		
		
		req.setAttribute("boardVO", boardVO);
		req.setAttribute("commentList", commentList);
		
		return "views/khDetail.jsp";
	}

}
