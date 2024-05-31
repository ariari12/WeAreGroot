package kr.co.moran.web.action.product;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.CategoryVO;
import kr.co.moran.web.vo.member.MemberVO;

public class DeleteAction implements Action {

	private HttpServletRequest req;
	private HttpServletResponse resp;
	private ProductDAO dao;
	private List<CategoryVO> ctgList;

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String type = req.getParameter("type");
		String nextUrl = null;
		dao = new ProductDAO();
		this.req = req;
		this.resp = resp;
		
		// admin이 아닌 사용자가 접근 시 예외처리
		MemberVO adminCheck = (MemberVO)req.getSession().getAttribute("memberVO");
//		System.out.println("modify: " + adminCheck);
		if(adminCheck == null || adminCheck.getAdmintype() < 1) {
			return "jsp/product/unauthorized.jsp";
		}
		
		switch (type == null ? "" : type) {
			case "ctg": nextUrl = ctgDelete(); break;
			case "prd": nextUrl = prdDelete(); break;
			default: nextUrl = null;
		}
		
		dao.closeSession();
		return nextUrl;
	}

	private String ctgDelete() {
		String ctg = req.getParameter("ctg");
		System.out.println("ctg: " + ctg);
		switch (ctg == null ? "" : ctg) {
			case "view": 
				/*
				 * 삭제 페이지 요청
				 * 최상위 카테고리 데이터를 반환
				 */
				ctgList = dao.ctSelectByParentIdIsNull();
				
				// 최상위 카테고리가 없는 경우
				if(ctgList.size() < 1) {
					System.out.println("카테고리 테이블 레코드가 없습니다.");
					req.setAttribute("message", "등록된 최상위 카테고리가 없습니다.");
					req.setAttribute("redUrl", "product");
					return "jsp/product/inform.jsp";
				}
				
				// 페이지 리소스 반환
				req.setAttribute("masterList", ctgList);
				return "jsp/product/deleteCtegory.jsp";
				
			case "del": // 카테고리 삭제
				String cId = req.getParameter("cId");
				String cParentId = req.getParameter("cParentId");
				
				System.out.println("cId: " + cId);
				System.out.println("cParentId: " + cParentId);
				
				if((cParentId == null || cParentId.equals(""))
						&& (cId == null || cId.equals(""))
				) {
					req.setAttribute("message", "존재하지 않는 카테고리입니다.");
					req.setAttribute("redUrl", "product");
					return "jsp/product/inform.jsp";
				}
				if(cId == null || cId.equals("")) dao.ctDelete(Integer.parseInt(cParentId));
				else dao.ctDelete(Integer.parseInt(cId));
				
				return ajaxToJsonOk("product");
				
			default: return null;
		}
	}
	
	private String prdDelete() {
		String nextUrl = null;
		String prd = req.getParameter("prd");
		if(prd != null) {
			int pId = Integer.parseInt(prd);
			dao.pdDeleteSet(pId);
			req.setAttribute("message", "상품이 보관처리 되었습니다."
					+ "\\n보관처리된 상품은 사용자한테 보이지 않습니다."
					+ "\\n30일 이내 재등록이 가능합니다."
					+ "\\n30일이 지나면 보관된 상품정보는 삭제됩니다.");
			req.setAttribute("redUrl", "product");
			nextUrl = "jsp/product/inform.jsp";
		}

		return nextUrl;
	}
	
	// AJAX 성공 JSON 응답
	private String ajaxToJsonOk(String nextUrl) {
		Map<String, String> resMap = new HashMap<String, String>();
		resMap.put("result", "ok");
		resMap.put("url", nextUrl);
		try {
			resp.getWriter().println(new JSONObject(resMap));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// ajax 반환
		return "ajax";
	}
	
}
