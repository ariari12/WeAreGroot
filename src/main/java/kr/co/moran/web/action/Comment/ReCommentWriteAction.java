package kr.co.moran.web.action.Comment;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;
import kr.co.moran.web.vo.member.MemberVO;


public class ReCommentWriteAction implements Action {
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {

		HttpSession session= req.getSession();
		
		CommentDAO cdao = new CommentDAO();
		CommentVO cvo = new CommentVO();
		MemberVO mvo =(MemberVO)session.getAttribute("memberVO");
		
		String cParentId = req.getParameter("cParentId");
		String bId = req.getParameter("bId");
		String eId = req.getParameter("eId");
		
		
		cvo.setMId(mvo.getMId());
		cvo.setContents(req.getParameter("contents"));
		
		if(cParentId != null) cvo.setCParentId(Integer.parseInt(cParentId));
		if(bId != null) cvo.setBId(Integer.parseInt(bId));
		if(eId != null) cvo.setEId(Integer.parseInt(eId));
		
		cdao.insertReComment(cvo);
		
		return "";
	}
}
