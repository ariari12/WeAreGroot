package kr.co.moran.web.action.comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;
import kr.co.moran.web.vo.member.MemberVO;

public class CommentWriteAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		
		CommentDAO dao = new CommentDAO();
		CommentVO vo = new CommentVO();
		
		int bId = Integer.parseInt(req.getParameter("bId"));
		int mId = memberVO.getMId();
		int type = Integer.parseInt(req.getParameter("type"));
		int count = Integer.parseInt(req.getParameter("count"));
		String contents = req.getParameter("contents");
		
		vo.setBId(bId);
		vo.setContents(contents);
		vo.setMId(mId);
	
		
		dao.insertComment(vo);
		count++;
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId + "&count=" + count;
		}else {
			return "/board?cmd=khDetail&bId=" + bId + "&count=" + count;
		}
		
	}
}
