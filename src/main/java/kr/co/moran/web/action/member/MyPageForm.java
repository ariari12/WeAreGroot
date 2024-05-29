package kr.co.moran.web.action.member;

import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.dao.ReviewDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class MyPageForm implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {	
		HttpSession session = req.getSession();
		MemberVO vo= (MemberVO) session.getAttribute("memberVO");
		int memberId=vo.getMId();
		/*review, board, 문의*/
		ReviewDAO rdao = new ReviewDAO();
		BoardDAO bdao = new BoardDAO();
		
		List<HashMap<String, Object>> boardList =bdao.selectAllBoardBymId(memberId);		
		if (!boardList.isEmpty()) {
		    System.out.println(boardList.get(0).get("title"));
		} else {
		    System.out.println("게시글이 없습니다.");
		}
		//후기 추가해야함
		req.setAttribute("boardList", boardList);
		return "jsp/member/myPageForm.jsp";
	}

}
