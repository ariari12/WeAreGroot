package kr.co.moran.web.action.product;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;

public class ListviewAction implements Action {
	private static final int PAGE_QUANTITY = 12;
	
	private ProductDAO dao;
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		dao = new ProductDAO();
		
		// 페이지 수 가져오기 없을 경우 첫 페이지
		int currentPage = req.getParameter("page") == null ? 0 
				: Integer.parseInt(req.getParameter("page")) -1;

		// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
		int maxPage = (int) Math.ceil(dao.pdTotal() / PAGE_QUANTITY);
		
//		System.out.println("start: " + currentPage * PAGE_QUANTITY);
		
		// 모든 상품 목록 가져오기
		req.setAttribute("pdList", 
				dao.pdSelectPage(currentPage * PAGE_QUANTITY, PAGE_QUANTITY));
		req.setAttribute("currentPage", currentPage +1);
		req.setAttribute("maxPage", maxPage);
		
		dao.closeSession();
		return "product/listView.jsp";
	}

}
