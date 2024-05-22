package kr.co.moran.web.action.Comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;

public class CommentWriteAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		CommentDAO dao = new CommentDAO();
		CommentVO vo = new CommentVO();
		
		int bId = Integer.parseInt(req.getParameter("bId"));
		int mId = Integer.parseInt(req.getParameter("mId"));
		String contents = req.getParameter("contents");
		
		vo.setBId(bId);
		vo.setContents(contents);
		vo.setMId(mId);
		
		
		dao.insertComment(vo);
		
		return "/board?cmd=khDetail&bId=" + bId;
	}
}
