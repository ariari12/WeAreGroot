package kr.co.moran.web.action.cart;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.cartTestDAO;
import kr.co.moran.web.vo.cartTest.CartVO;
import kr.co.moran.web.vo.cartTest.ProductCartVO;
import kr.co.moran.web.vo.productTest.ProductVO;

public class CartListAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		cartTestDAO dao = new cartTestDAO();
		List<ProductCartVO> vo = dao.selectCartList(9);
		req.setAttribute("cartVO", vo);
		
		return "/jsp/cart/cartList.jsp";
	}

}
