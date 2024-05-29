package kr.co.moran.web.action.cart;

import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CartDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class DeleteCartAction implements Action {
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String[] pIds = req.getParameter("productIds").split(",");
		Map<String, Object> params = new HashMap<>();
		params.put("productIds", pIds);
		
	    HttpSession session = req.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("memberVO");
		
		params.put("mId", mvo.getMId());
		CartDAO dao = new CartDAO();
		return String.valueOf(dao.deleteCart(params));
	}
}
