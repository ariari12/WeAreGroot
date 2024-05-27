package kr.co.moran.web.action.product;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;

public class DetailviewAction implements Action {
	
	private ProductDAO dao;

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		if(req.getParameter("no") == null) {
			return "product/listView.jsp";
		}
		
		int no = Integer.parseInt(req.getParameter("no"));
//		System.out.println(no);
		
		dao = new ProductDAO();
		ProductVO v = dao.pdSelsctOneByPId(no);
		List<Integer> popPIdList = dao.pdSelectPopByPId();
		
		if(v == null) {
			return null;
		}
//		System.out.println(v);
		
		
		List<ProductImgVO> imgs = dao.piSelsctByPId(no);
		
		// 모든 상품 목록 가져오기
		req.setAttribute("pdList", v);
		req.setAttribute("popPIdList", popPIdList);
		req.setAttribute("imgs", imgs);
		
		dao.closeSession();
		return "jsp/product/detailView.jsp";
	}

}
