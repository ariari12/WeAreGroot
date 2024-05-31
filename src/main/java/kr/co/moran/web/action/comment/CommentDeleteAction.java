package kr.co.moran.web.action.comment;

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
		int count = Integer.parseInt(req.getParameter("count")) - 1;
		System.out.println(bId);
		
		CommentDAO dao = new CommentDAO();
		dao.deleteComment(cId);
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId + "&count=" + count;
		}else {
			return "/board?cmd=khDetail&bId=" + bId + "&count=" + count;
		}
		
	}
}
