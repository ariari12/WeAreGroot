package kr.co.moran.web.action.cart;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.cartTestDAO;
import kr.co.moran.web.vo.cartTest.CartVO;

public class CartAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		// 멤버ID, 상품ID, 상품수량
		String m = req.getParameter("mId");
		String p = req.getParameter("pId");
		String c = req.getParameter("cnt");
			
		// 값이 없거나 null 이라면 리턴
		if (m == null || m == "") { return "fail"; }
		if (p == null || p == "") { return "fail"; }
		if (c == null || c == "") { return "fail"; }
			
		// STR TO INT
		int mId = Integer.parseInt(m);
		int pId = Integer.parseInt(p);
		int cnt = Integer.parseInt(c);
			
		cartTestDAO dao = new cartTestDAO();
		CartVO cvo = new CartVO();
		cvo.setMId(mId);
		cvo.setPId(pId);
		cvo.setCnt(cnt);
			
		return String.valueOf(dao.insertCart(cvo));
	}
}
