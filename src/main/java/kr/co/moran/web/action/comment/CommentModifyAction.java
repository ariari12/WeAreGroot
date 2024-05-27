package kr.co.moran.web.action.comment;

import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;

public class CommentModifyAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String contents = req.getParameter("contents");
		int cId = Integer.parseInt(req.getParameter("cId"));
		int bId = Integer.parseInt(req.getParameter("bId"));
		int type = Integer.parseInt(req.getParameter("type"));
		CommentDAO dao = new CommentDAO();
		
		dao.modifyComment(cId, contents);
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId;
		}else {
			return "/board?cmd=khDetail&bId=" + bId;
		}
		
	}
}
