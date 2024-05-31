package kr.co.moran.web.action.member;

import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.BoardDAO;
import kr.co.moran.web.dao.OrderDAO;
import kr.co.moran.web.dao.ReviewDAO;
import kr.co.moran.web.vo.member.MemberVO;
import kr.co.moran.web.vo.order.OrderVO;

public class MyPageForm implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {	
		HttpSession session = req.getSession();
		MemberVO vo= (MemberVO) session.getAttribute("memberVO");
		int memberId=vo.getMId();
		/*review, board, 문의*/
		// 회원이 작성한 게시판 리스트 호출
		boardList(req, memberId);
		// 회원이 주문한 리스트 호출
		orderList(req, memberId);
		
		return "jsp/member/myPageForm.jsp";
	}


	//현종이형 주문내역글 가져오는 코드
	private void orderList(HttpServletRequest req, int memberId) {
		OrderDAO dao = new OrderDAO();
		List<OrderVO> orderList =dao.selectOrderAllByMid(memberId);
		if(orderList == null) {
			System.out.println("주문내역이 없습니다");
		}else {
			req.setAttribute("orderList", orderList);
		}
		
	}

	
	
	//일성이형 게시판글 가져오는 코드
	private void boardList(HttpServletRequest req, int memberId) {
		ReviewDAO rdao = new ReviewDAO();
		BoardDAO bdao = new BoardDAO();
		System.out.println("bdao 시작");
		List<HashMap<String, Object>> boardList =bdao.selectAllBoardBymId(memberId);
        List<HashMap<String, Object>> hs = bdao.selectCountAllComment();
		
		
		if (!boardList.isEmpty()) {
	        // 궁금한 코드
	        for (HashMap<String, Object> boardhashmap : boardList) {
	        	boardhashmap.put("count", 0);
	            for (HashMap<String, Object> commentcounthashmap : hs) {
	    			if(boardhashmap.get("bId").equals(commentcounthashmap.get("bId"))){
	    				boardhashmap.put("count", commentcounthashmap.get("count"));
	    			}
	    		}
			}
		    System.out.println(boardList.get(0));
		} else {
		    System.out.println("게시글이 없습니다.");
		}
		//후기 추가해야함
		req.setAttribute("boardList", boardList);
	}

}
