package kr.co.moran.web.action.comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;

public class CommentModifyLikeCntAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		int type = Integer.parseInt(req.getParameter("type"));
		int bId = Integer.parseInt(req.getParameter("bId"));
		int cId = Integer.parseInt(req.getParameter("cId"));
		
		CommentDAO dao = new CommentDAO();
		dao.modifyCommentLikeCntBycId(cId);
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId;
		}else {
			return "/board?cmd=khDetail&bId=" + bId;
		}
	}
}
