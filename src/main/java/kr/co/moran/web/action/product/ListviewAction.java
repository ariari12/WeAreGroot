package kr.co.moran.web.action.product;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;

public class ListviewAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		// 모든 상품 목록 가져오기
		req.setAttribute("pdList", new ProductDAO().pdSelectAll());
		return "product/listView.jsp";
	}

}
