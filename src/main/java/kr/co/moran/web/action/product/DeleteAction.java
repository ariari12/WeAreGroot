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
		String nextUrl = "";
		dao = new ProductDAO();
		this.req = req;
		this.resp = resp;
		
		// admin이 아닌 사용자가 접근 시 예외처리
		MemberVO adminCheck = (MemberVO)req.getSession().getAttribute("memberVO");
//		System.out.println("modify: " + adminCheck);
		if(adminCheck == null || Integer.parseInt(adminCheck.getAdmintype()) < 1) {
			return "jsp/product/unauthorized.jsp";
		}
		
		switch (type == null ? "" : type) {
			case "ctg": nextUrl = ctgDelete();
				break;
			case "prd": nextUrl = prdDelete();
			default: nextUrl = null;
		}
		
		dao.closeSession();
		return nextUrl;
	}

	private String ctgDelete() {
		String ctg = req.getParameter("ctg");
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
					return "jsp/product/createCategory.jsp";
				}
				
				// 페이지 리소스 반환
				req.setAttribute("masterList", ctgList);
				return "jsp/product/deleteCtegory.jsp";
				
			case "del": // 카테고리 삭제
				String cId = req.getParameter("cId");
				String cParentId = req.getParameter("cParentId");
				if(cParentId == null && cId == null) {
					req.setAttribute("message", "존재하지 않는 카테고리입니다.");
					req.setAttribute("redUrl", "product");
					return "jsp/product/inform.jsp";
				}
				if(cId == null) {					
					dao.ctDelete(Integer.parseInt(cParentId));
				}
				else dao.ctDelete(Integer.parseInt(cId));
				return ajaxToJsonOk("product");
				
			default: return null;
		}
	}
	
	private String prdDelete() {
		// TODO Auto-generated method stub
		return null;
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
