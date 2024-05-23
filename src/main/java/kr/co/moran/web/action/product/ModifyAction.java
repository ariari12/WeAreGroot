package kr.co.moran.web.action.product;

import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.CategoryVO;

public class ModifyAction implements Action {
	
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
				String ctg = req.getParameter("ctg");
				if(ctg == null) {
					return null;
				}
				nextUrl = categoryModify(ctg); 
				break;
			case "prd": // prd: product
//				prdlist = categoryType(startNum, PAGE_QUANTITY,
//				 req.getParameter("category")); 
				break;
			default: 
//				prdlist = noneType(startNum, PAGE_QUANTITY);
		}
		
//		req.setAttribute("categoryList", ctgList);
		
		dao.closeSession(); // db session 종료
		return nextUrl;
	}
	
	// category
	private String categoryModify(String ctg) {
		switch (ctg) {
			case "confirm":
				// TODO : confirmMethod();
				return "";
			case "view":
				ctgList = dao.ctSelectByParentIdIsNull();
				if(ctgList.size() < 1) { // 최상위 카테고리가 없는 경우
					System.out.println("카테고리 테이블 레코드가 없습니다.");
					req.setAttribute("message", "등록된 최상위 카테고리가 없습니다.");
					return "jsp/product/createCategory.jsp";
				}
				req.setAttribute("masterList", ctgList);
				return "jsp/product/modifyCategory.jsp";
			case "sub":
				String cId = req.getParameter("CID");
				System.out.println(cId);
				if(cId == null) { // 기본키가 파라미터로 넘어오지 않은 겨우
					req.setAttribute("message", "카테고리를 찾을 수 없습니다.");
					req.setAttribute("redUrl", "product?cmd=modify&type=ctg&ctg=view");
					return "jsp/product/inform.jsp";
				}
				
				ctgList = dao.ctSelectByParentId(
						Integer.parseInt(cId));
				if(ctgList.size() < 1) {
					req.setAttribute("", cId);
				}
				
				ctgList.forEach(System.out::println);
				
				return "jsp/product/modifyCategory.jsp";
			default:
				return null;
		}
	}
	
}
