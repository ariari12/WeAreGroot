package kr.co.moran.web.action.product;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.ProductVO;

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
		
		// 상품리스트 가져오기
//		System.out.println("start: " + currentPage * PAGE_QUANTITY);
		List<ProductVO> prdlist = dao.pdSelectPage(currentPage * PAGE_QUANTITY, PAGE_QUANTITY);
		// 인기순 정렬용 리스트
		Map<Integer, Integer> prdTotals = new HashMap<Integer, Integer>();
		
		// 가져온 상품리스트에서 주문자 수 가져오기
		for (ProductVO prd : prdlist) {
			int totalBuy = dao.orderTotalByPid(prd.getPId());
			prdTotals.put(prd.getPId(), totalBuy);
		}

		// 주문자 순으로 정렬
		List<Integer> keys = new ArrayList<Integer>(prdTotals.keySet());
		keys.sort(new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return prdTotals.get(o1).compareTo(prdTotals.get(o2));
			}
		});
		
		// 인기순 상위 5개 가져오기
		List<Integer> hotPIds = new ArrayList<Integer>();
		for (int i = 0; i < 5; i++) {
			hotPIds.add(keys.get(i));
		}
//		System.out.println(hotPIds);
		
		
		req.setAttribute("pdList", prdlist);
		req.setAttribute("currentPage", currentPage +1);
		req.setAttribute("maxPage", maxPage);
		req.setAttribute("hotPIds", hotPIds);
		
		dao.closeSession();
		return "jsp/product/listView.jsp";
	}
	
	

}
