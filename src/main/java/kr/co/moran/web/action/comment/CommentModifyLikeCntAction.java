package kr.co.moran.web.action.comment;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.LikeVO;
import kr.co.moran.web.vo.member.MemberVO;

public class CommentModifyLikeCntAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		MemberVO m = (MemberVO)session.getAttribute("memberVO");
		
		int type = Integer.parseInt(req.getParameter("type"));
		int bId = Integer.parseInt(req.getParameter("bId"));
		int cId = Integer.parseInt(req.getParameter("cId"));
		int mId = m.getMId();
		
		CommentDAO dao = new CommentDAO();
		LikeVO vo = new LikeVO();
		vo.setBId(bId);
		vo.setCId(cId);
		
		
		String likeResult = req.getParameter("likeResult");

		//		만약 좋아요 목록에 cId와 mId가 같은게 없다면
		if(likeResult.equals("likeOk")) {
			// 좋아요 수 증가 로직
			dao.modifyCommentLikeCntPlusBycId(bId);
			// 좋아요 저장 로직
			dao.insertCommentLikeBycId(vo);
		}else if(likeResult.equals("likeCancel")) {
			// 좋아요 수 감소 로직
			dao.modifyCommentLikeCntMinusBycId(bId);
			//좋아요 삭제 로직
			dao.deleteCommentLikeBycId(vo);
		}
		
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId;
		}else {
			return "/board?cmd=khDetail&bId=" + bId;
		}
	}
}
