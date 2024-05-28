package kr.co.moran.web.action.knowhow;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.vo.LikeVO;
import kr.co.moran.web.vo.member.MemberVO;

public class KHModifyLikeCntAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		MemberVO m = (MemberVO)session.getAttribute("memberVO");
		int bId = Integer.parseInt(req.getParameter("bId"));
		int mId = m.getMId();
		BoardDAO dao = new BoardDAO();
		LikeVO vo = new LikeVO();
		vo.setBId(bId);
		vo.setMId(mId);
		
		// 좋아요 수 증가 로직
		dao.modifyBoardLikeCntBybId(bId);
		// 좋아요 저장 로직
		dao.insertBoardLikeBybId(vo);
		
		return "board?cmd=khDetail&bId=" + bId;
	}
}
