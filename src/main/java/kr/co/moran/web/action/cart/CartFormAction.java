package kr.co.moran.web.action.cart;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CartDAO;
import kr.co.moran.web.vo.cart.ProductCartVO;
import kr.co.moran.web.vo.member.MemberVO;

public class CartFormAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
	    HttpSession session = req.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("memberVO");
		
		CartDAO dao = new CartDAO();
		List<ProductCartVO> vo = dao.selectCartList(mvo.getMId());
		req.setAttribute("cartVO", vo);
		
		return "/jsp/cart/cartForm.jsp";
	}
}
