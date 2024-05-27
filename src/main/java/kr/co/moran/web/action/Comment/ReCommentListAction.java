package kr.co.moran.web.action.Comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;

public class ReCommentListAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		CommentDAO cdao = new CommentDAO();
		CommentVO cvo = new CommentVO();
		
		
		
		return "";
	}

}
