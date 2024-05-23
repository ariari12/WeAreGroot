package kr.co.moran.web.action.productTest;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductTestDAO;
import kr.co.moran.web.vo.productTest.ProductVO;

public class DetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String pdIdStr = req.getParameter("pd_id");
		
		// 상품이 없음.
		if (pdIdStr == null || pdIdStr.equals("")) {
			return "/jsp/productTest/productDetail.jsp";
		}
		int pdId = Integer.parseInt(pdIdStr);
		
		ProductTestDAO dao = new ProductTestDAO();
		ProductVO vo = dao.selectProduct(pdId);
		System.out.println(vo);
		req.setAttribute("productVO", vo);
		return "/jsp/productTest/productDetail.jsp";
	}

}
