package kr.co.moran.web.action.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.CategoryVO;
import kr.co.moran.web.vo.member.MemberVO;

public class AddAction implements Action {
	
	private HttpServletRequest req;
	private HttpServletResponse resp;
	private ProductDAO dao;
	private List<CategoryVO> ctgList;

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		this.req = req;
		this.resp = resp;
		
		// admin이 아닌 사용자가 접근 시 예외처리
		MemberVO adminCheck = (MemberVO)req.getSession().getAttribute("memberVO");
//		System.out.println("modify: " + adminCheck);
		if(adminCheck == null || adminCheck.getAdmintype() < 1) {
			return "jsp/product/unauthorized.jsp";
		}
		
		String type = req.getParameter("type");
		dao = new ProductDAO();
		ctgList = new ArrayList<CategoryVO>();
		String nextUrl = "";
		
		switch (type == null ? "" : type) {
			case "ctg": // ctg: category
				nextUrl = categoryAdd(req.getParameter("ctg"));
				break;
			case "prd": // prd: product
				nextUrl = productAdd(req.getParameter("prd"));
				break;
			default: 
//				prdlist = noneType(startNum, PAGE_QUANTITY);
		}
		
		dao.closeSession(); // db session 종료
		return nextUrl;
	}
	
	// category
	private String categoryAdd(String ctg) {
		String cId;
		switch (ctg) {
			case "view": // 등록 페이지 요청
				// 페이지 리소스 반환
				req.setAttribute("masterList", ctgList);
				return "jsp/product/createCategory.jsp";
				
			case "sub":
				/*
				 * 상위 카테고리 데이터 요청
				 * 상위 카테고리 데이터들을 반환
				 */
				ctgList = dao.ctSelectByParentIdIsNull();
				
				// JSON 객체 생성 후 AJAX 응답
				return ajaxToJsonArray();
				
			case "confirm":
				/*
				 * 등록 완료 요청
				 * db table 데이터 수정
				 * 수정이 완료되었음을 사용자에게 반환
				 */
				String cParantId = req.getParameter("cParentId");
				String name = req.getParameter("name");
				
				cParantId = cParantId.equals("") ? null : cParantId;
				
				System.out.println("cParentId: " + cParantId);
				System.out.println("name:" + name);
				
				dao.ctAdd(cParantId, name);

				// ajax 반환
				return ajaxToJsonOk("product");
				
			default: // 잘못된 요청에 대한 예외 처리
				return null;
		}
	}

	// product
	private String productAdd(String prd) {
		String pId;
		switch (prd) {
			case "view": // 등록 페이지 요청
				// 페이지 리소스 반환
				req.setAttribute("masterList", ctgList);
				return "jsp/product/createProduct.jsp";
				
			case "sub":
				/*
				 * 상위 카테고리 데이터 요청
				 * 상위 카테고리 데이터들을 반환
				 */
				
				// JSON 객체 생성 후 AJAX 응답
				return ajaxToJsonArray();
				
			case "confirm":
				/*
				 * 등록 완료 요청
				 * db table 데이터 수정
				 * 수정이 완료되었음을 사용자에게 반환
				 */
//				String cParantId = req.getParameter("cParentId");
//				String name = req.getParameter("name");
//				
//				cParantId = cParantId.equals("") ? null : cParantId;
//				
//				System.out.println("cParentId: " + cParantId);
//				System.out.println("name:" + name);
//				
//				dao.ctAdd(cParantId, name);

				// ajax 반환
				return ajaxToJsonOk("product");
				
			default: // 잘못된 요청에 대한 예외 처리
				return null;
		}
	}
	
	
	// common
	private String ajaxToJsonArray() {
		// AJAX 반환 JSON 객체 생성
		JSONObject jsonObject = new JSONObject();
		
		
		// ctgList 내용이 비어있는 경우
		if(ctgList.size() < 1) {
			jsonObject.put("ctgList", null);
		}
		else {
			// JSON ArayList 생성
			JSONArray ctgJsonArray = new JSONArray();
			
			// cgtList -> JSON Array 변환
			for (int i = 0; i < ctgList.size(); i++) {
				// dao JSON 객체
				Map<String, Object> subCtg = new HashMap<String, Object>();
				subCtg.put("cId", ctgList.get(i).getCId());
				subCtg.put("name", ctgList.get(i).getName());
				
				ctgJsonArray.add(new JSONObject(subCtg));
			}
			jsonObject.put("ctgList", ctgJsonArray);
		}
		jsonObject.put("result", "ok");
		
		try {
			resp.getWriter().print(jsonObject.toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		}
//		System.out.println(jsonObject.toJSONString());

		// 리소스 반환
		return "ajax";
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
