package kr.co.moran.web.action.Comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;
import kr.co.moran.web.vo.member.MemberVO;

public class CommentWriteAjax implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session= req.getSession();
		CommentDAO cdao = new CommentDAO();
		CommentVO cvo = new CommentVO();
		MemberVO mvo =(MemberVO)session.getAttribute("memberVO");
		
		
		if(req.getParameter("bId") != null) {
			int bId = Integer.parseInt(req.getParameter("bId"));
			cvo.setBId(bId);
		}
		if(req.getParameter("eId") != null) {
			int eId = Integer.parseInt(req.getParameter("eId"));
			cvo.setEId(eId);
		}
		cvo.setMId(mvo.getMId());
		cvo.setTitle(req.getParameter("title"));
		cvo.setContents(req.getParameter("contents"));
		
		cdao.insertCommentAjax(cvo);
		
		
		return null;
	}

}
