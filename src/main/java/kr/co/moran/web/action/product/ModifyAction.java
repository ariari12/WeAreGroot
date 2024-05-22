package kr.co.moran.web.action.product;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CategoryDAO;
import kr.co.moran.web.dao.ProductDAO;

public class ModifyAction implements Action {
	
	private ProductDAO dao;

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String type = req.getParameter("type");
		dao = new ProductDAO();
		
		switch (type == null ? "" : type) {
			case "category": prdlist = categoryType(startNum, PAGE_QUANTITY,
				 req.getParameter("category")); break;
			default: prdlist = noneType(startNum, PAGE_QUANTITY);
		}
			
		
		dao.closeSession(); // db session 종료
		return "jsp/product/modifyCategory.jsp";
	}
	
	private void categoryModify() {
		
	}

}
