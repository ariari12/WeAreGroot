package kr.co.moran.web.action.knowhow;

import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.CommentVO;
import kr.co.moran.web.vo.LikeVO;
import kr.co.moran.web.vo.member.MemberVO;

public class KHDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
//		bId 가져오기
		String sbId = req.getParameter("bId");
		int bId = Integer.parseInt(sbId);
		
		HttpSession session = req.getSession();
		LikeVO vo = new LikeVO();
//		memberVO 세션에서 가져오기(mId 가져오려고)
		if((MemberVO)session.getAttribute("memberVO") != null) {
			MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
			req.setAttribute("loginId",memberVO.getMId());
			
			
			vo.setBId(bId);
			vo.setMId(memberVO.getMId());
		}
		
		
		BoardDAO boardDAO = new BoardDAO();
		CommentDAO commentDAO = new CommentDAO();
		
		String likeResult;
		
//		만약 좋아요 목록에 bId와 mId가 같은게 없다면
		if(boardDAO.SelectBoardLikeBybIdandmId(vo) == null) {
			likeResult = "ok";
		}else {
			likeResult = "no";
		}
		
		
//		조회수 증가
		boardDAO.modifyBoardViewCntBybId(bId);
		
//		특정 게시글 정보 가져오기
		HashMap<String, Object> boardVO = boardDAO.selectBoardBybId(bId);
		
//		해당 게시글의 댓글 목록 가져오기
		List<HashMap<String, Object>> commentList = commentDAO.selectCommentBybId(bId);
		
		req.setAttribute("boardVO", boardVO);
		req.setAttribute("commentList", commentList);
		req.setAttribute("likeResult", likeResult);
		
		return "jsp/board/khDetail.jsp";
	}

}
