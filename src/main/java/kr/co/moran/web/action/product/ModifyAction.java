package kr.co.moran.web.action.product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.UploadAction;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.CategoryVO;
import kr.co.moran.web.vo.member.MemberVO;

public class ModifyAction implements UploadAction {
	
	private HttpServletRequest req;
	private HttpServletResponse resp;
	private MultipartRequest mlpReq;
	private ProductDAO dao;
	private List<CategoryVO> ctgList;
	
	public ModifyAction() {
		dao = new ProductDAO();
		ctgList = new ArrayList<CategoryVO>();
	}

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String nextUrl = common(null, req, resp);
		dao.closeSession(); // db session 종료
		return nextUrl;
	}
	
	@Override
	public String fileExecute(MultipartRequest mlp, HttpServletRequest req, HttpServletResponse resp) {
		String nextUrl = common(mlp, req, resp);
		dao.closeSession(); // db session 종료
		return nextUrl;
	}
	
	// common process
	private String common(MultipartRequest mlp, HttpServletRequest req, HttpServletResponse resp) {
		// admin이 아닌 사용자가 접근 시 예외처리
		MemberVO adminCheck = (MemberVO)req.getSession().getAttribute("memberVO");
//		System.out.println("modify: " + adminCheck);
		if(adminCheck == null || adminCheck.getAdmintype() < 1) {
			return "jsp/product/unauthorized.jsp";
		}

		this.mlpReq = mlp;
		this.req = req;
		this.resp = resp;
		
		String type = mlpReq == null ? req.getParameter("type")
									: mlpReq.getParameter("type");
		System.out.println("type: " + type);
		
		String nextUrl = null;
		switch (type == null ? "" : type) {
			case "ctg": // ctg: category
				String ctg = req.getParameter("ctg");
				
				// 파라미터가 넘어오지 않은 경우
				if(ctg == null) return null;
				nextUrl = categoryModify(ctg);
				break;
			
			case "prd":
				String prd = mlpReq == null ? req.getParameter("prd")
						: mlpReq.getParameter("prd");
				System.out.println("prd: " + prd);
				
				// 파라미터가 넘어오지 않은 경우
				if(prd == null) return null;
				
				// 각 파라미터에 따른 요청 처리
				nextUrl = productModify(prd); 
				break;
			default: // type 파라미터가 넘어오지 않은 경우
		}
		return nextUrl;
	}
	
	
	// category
	private String categoryModify(String ctg) {
		String cId;
		switch (ctg) {
			case "view":
				/*
				 * 수정 페이지 요청
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
				return "jsp/product/modifyCategory.jsp";
				
			case "sub":
				/*
				 * 하위 카테고리 데이터 요청
				 * 최상위 카테고리를 선택한 이후 요청
				 * 선택한 최상위 카테고리에 해당하는
				 * 하위 카테고리 데이터들을 반환
				 */
				cId = req.getParameter("cId");
//				System.out.println("cId: " + cId);
				
				// 기본 키 (cId)가 파라미터로 넘어오지 않은 겨우
				if(cId == null) {
					req.setAttribute("message", "카테고리를 찾을 수 없습니다.");
					req.setAttribute("redUrl", "product?cmd=modify&type=ctg&ctg=view");
					return "jsp/product/inform.jsp";
				}
				
				ctgList = dao.ctSelectByParentId(Integer.parseInt(cId));
				
				// JSON 객체 생성 후 AJAX 응답
				return ajaxToJsonArray();
				
			case "confirm":
				/*
				 * 수정 완료 요청
				 * db table 데이터 수정
				 * 수정이 완료되었음을 사용자에게 반환
				 */
				
				cId = req.getParameter("cId");
				String cParantId = req.getParameter("cParentId");
				String name = req.getParameter("name");
				
				System.out.println("cId: " + cId);
				System.out.println("cParentId: " + cParantId);
				System.out.println("name:" + name);
				
				if((cId != null && (cParantId == null || cParantId.equals("")
					|| cParantId.equals("null")))
				) {
					dao.ctUpdate(Integer.parseInt(cId), null, name);
				}
				else if(cId == null || cId.equals("")) {
					req.setAttribute("message", "카테고리를 찾을 수 없습니다.");
					req.setAttribute("redUrl", "product?cmd=modify&type=ctg&ctg=view");
					return "jsp/product/inform.jsp";
				}
				else dao.ctUpdate(Integer.parseInt(cId), cParantId, name);

				// ajax 반환
				return ajaxToJsonOk("product");
				
			default: // 잘못된 요청에 대한 예외 처리
				return null;
		}
	}

	// product
	private String productModify(String prd) {
		String nextUrl = null;
		switch (prd == null ? "" : prd) {
			default:
				req.setAttribute("message", "미완성 기능입니다."
						+ "\\n차후 업데이트 예정입니다.");
				req.setAttribute("redUrl", "product?cmd=list&type=save");
				nextUrl = "jsp/product/inform.jsp";
				break;
		}
		return nextUrl;
	}
	
	@SuppressWarnings("unchecked")
	private String ajaxToJsonArray() {
		// AJAX 반환 JSON 객체 생성
		JSONObject jsonObject = new JSONObject();
		
		// JSON ArayList 생성
		JSONArray ctgJsonArray = new JSONArray();
		
		// cgtList -> JSON Array 변환
		Object[] ctgArray = new Object[ctgList.size()];
		for (int i = 0; i < ctgList.size(); i++) {
			// dao JSON 객체
			Map<String, Object> subCtg = new HashMap<String, Object>();
			subCtg.put("cId", ctgList.get(i).getCId());
			subCtg.put("name", ctgList.get(i).getName());
			
			ctgJsonArray.add(new JSONObject(subCtg));
		}
		
		// ctgList 내용이 비어있는 경우
		if(ctgList.size() < 1) {
			jsonObject.put("ctgList", null);
		}
		else {
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
