package kr.co.moran.web.action.qna;

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

public class QnADetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
//		bId 가져오기
		String sbId = req.getParameter("bId");
		int bId = Integer.parseInt(sbId);
		int count = Integer.parseInt(req.getParameter("count"));
		HttpSession session = req.getSession();
		
		LikeVO vo = new LikeVO();
		MemberVO memberVO = new MemberVO();
		
		System.out.println("memberVO.getMId : " + memberVO.getMId());
//		memberVO 세션에서 가져오기(mId 가져오려고) if문 안쓰면 null예외 발생할 수 있음
		if((MemberVO)session.getAttribute("memberVO") != null) {
			memberVO = (MemberVO)session.getAttribute("memberVO");
			req.setAttribute("loginId",memberVO.getMId());
			
			
			vo.setBId(bId);
			vo.setMId(memberVO.getMId());
		}
		
		
		BoardDAO boardDAO = new BoardDAO();
		CommentDAO commentDAO = new CommentDAO();
		
		String boardLikeResult;
		
//		만약 좋아요 목록에 bId와 mId가 같은게 없다면
		if(boardDAO.SelectBoardLikeBybIdandmId(vo) == null) {
			boardLikeResult = "ok";
		}else {
			boardLikeResult = "no";
		}
		
		
//		조회수 증가
		boardDAO.modifyBoardViewCntBybId(bId);
		
//		특정 게시글 정보 가져오기 및 댓글 수 삽입
		HashMap<String, Object> boardVO = boardDAO.selectBoardBybId(bId);
		boardVO.put("count", count);
		
//		해당 게시글의 댓글 목록 가져오기
		List<HashMap<String, Object>> commentList = commentDAO.selectCommentBybId(bId);
		
//		각 댓글의 좋아요 유무 판별
		for (HashMap<String, Object> comment : commentList) {
			vo = new LikeVO();
			vo.setCId((int)comment.get("cId"));
			vo.setMId(memberVO.getMId());
			
//			만약 좋아요 목록에 cId와 mId가 같은게 없다면
			if(commentDAO.selectCommentLikeBycIdandmId(vo) == null) {
				comment.put("commentLikeResult", "ok");
			}else {
				comment.put("commentLikeResult", "no");
			}
		}
		System.out.println(commentList);
		
		req.setAttribute("boardVO", boardVO);
		req.setAttribute("commentList", commentList);
		req.setAttribute("boardLikeResult", boardLikeResult);
		
		return "jsp/board/qnaDetail.jsp";
	}

}
