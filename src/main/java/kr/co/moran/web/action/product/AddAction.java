package kr.co.moran.web.action.product;

import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.CategoryVO;

public class AddAction implements Action {
	
	private HttpServletRequest req;
	private HttpServletResponse resp;
	private ProductDAO dao;
	private List<CategoryVO> ctgList;

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		this.req = req;
		this.resp = resp;
		
		String type = req.getParameter("type");
		dao = new ProductDAO();
		ctgList = new ArrayList<CategoryVO>();
		String nextUrl = "";
		
//		System.out.println("modify? " + type);
		
		switch (type == null ? "" : type) {
			case "ctg": // ctg: category
				categoryAdd();
				break;
			case "prd": // prd: product
				break;
			default: 
//				prdlist = noneType(startNum, PAGE_QUANTITY);
		}
		
		
		
		return null;
	}
	
	private void categoryAdd() {
		String ctg = req.getParameter("ctg");
		
		switch (ctg == null ? "" : ctg) {
			case "ctg":
				break;
			case "": 
				break;
			default: 
		}
	}
	

}
