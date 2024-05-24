package kr.co.moran.web.action.QnA;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.CommentVO;

public class QnADetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String sbId = req.getParameter("bId");
		int bId = Integer.parseInt(sbId);
		
		BoardDAO boardDAO = new BoardDAO();
		CommentDAO commentDAO = new CommentDAO();  
		
		BoardVO boardVO = new BoardVO();
		boardVO = boardDAO.selectKHBybId(bId);
		
		List<CommentVO> commentList = commentDAO.selectCommentBybId(bId);
		
		System.out.println(commentList);
		
		req.setAttribute("boardVO", boardVO);
		req.setAttribute("commentList", commentList);
		
		return "views/qnaDetail.jsp";
	}

}
