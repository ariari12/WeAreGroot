package kr.co.moran.web.action.cart;

import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CartDAO;
import kr.co.moran.web.vo.cart.CartVO;
import kr.co.moran.web.vo.member.MemberVO;

public class AddCartAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 멤버ID, 상품ID, 상품수량
	    HttpSession session = req.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("memberVO");
		String p = req.getParameter("pId");
		String c = req.getParameter("cnt");
			
		// 값이 없거나 null 이라면 리턴
		if (p == null || p == "") { return "fail"; }
		if (c == null || c == "") { return "fail"; }
		
		Map<String, Object> params = new HashMap<>();
		params.put("mId", mvo.getMId());
		params.put("pId", p);
		params.put("cnt", c);

		CartDAO dao = new CartDAO();
		return String.valueOf(dao.insertCart(params));
	}
}
