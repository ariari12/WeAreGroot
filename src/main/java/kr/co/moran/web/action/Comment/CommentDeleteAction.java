package kr.co.moran.web.action.Comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;

public class CommentDeleteAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		int cId = Integer.parseInt(req.getParameter("cId"));
		int bId = Integer.parseInt(req.getParameter("bId"));
		int type = Integer.parseInt(req.getParameter("type"));
		System.out.println(bId);
		
		CommentDAO dao = new CommentDAO();
		dao.deleteComment(cId);
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId;
		}else {
			return "/board?cmd=khDetail&bId=" + bId;
		}
		
	}
}
