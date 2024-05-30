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
		int count = Integer.parseInt(req.getParameter("count"));
		
		
		CommentDAO dao = new CommentDAO();
		LikeVO vo = new LikeVO();
		vo.setBId(bId);
		vo.setCId(cId);
		vo.setMId(mId);
		
		String commentLikeResult = req.getParameter("commentLikeResult");
		
		//		만약 좋아요 목록에 cId와 mId가 같은게 없다면
		if(commentLikeResult.equals("likeOk")) {
			// 좋아요 수 증가 로직
			dao.modifyCommentLikeCntPlusBycId(cId);
			// 좋아요 저장 로직
			dao.insertCommentLikeBycId(vo);
		}else if(commentLikeResult.equals("likeCancel")) {
			// 좋아요 수 감소 로직
			dao.modifyCommentLikeCntMinusBycId(cId);
			//좋아요 삭제 로직
			dao.deleteCommentLikeBycId(vo);
		}
		
		
		if(type == 1) {
			return "/board?cmd=qnaDetail&bId=" + bId + "&count=" + count;
		}else {
			return "/board?cmd=khDetail&bId=" + bId + "&count=" + count;
		}
	}
}
