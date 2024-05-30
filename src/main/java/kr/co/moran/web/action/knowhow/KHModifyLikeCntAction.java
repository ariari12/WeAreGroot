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
		
		String likeResult = req.getParameter("likeButton");
//		만약 좋아요 목록에 bId와 mId가 같은게 없다면
		if(likeResult.equals("likeOk")) {
			// 좋아요 수 증가 로직
			dao.modifyBoardLikeCntPlusBybId(bId);
			// 좋아요 저장 로직
			dao.insertBoardLikeBybId(vo);
		}else if(likeResult.equals("likeCancel")) {
			// 좋아요 수 감소 로직
			dao.modifyBoardLikeCntMinusBybId(bId);
			//좋아요 삭제 로직
			dao.deleteBoardLikebyBid(vo);
		}
		
		return "board?cmd=khDetail&bId=" + bId;
	}
}
