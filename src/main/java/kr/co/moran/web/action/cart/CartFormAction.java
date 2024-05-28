package kr.co.moran.web.action.cart;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CartDAO;
import kr.co.moran.web.vo.cartTest.ProductCartVO;

public class CartFormAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		CartDAO dao = new CartDAO();
		List<ProductCartVO> vo = dao.selectCartList(9);
		req.setAttribute("cartVO", vo);
		
		return "/jsp/cart/cartForm.jsp";
	}
}
