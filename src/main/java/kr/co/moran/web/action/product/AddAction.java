package kr.co.moran.web.action.product;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.UploadAction;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.CategoryVO;
import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;
import kr.co.moran.web.vo.member.MemberVO;

public class AddAction implements UploadAction {
	
	private HttpServletRequest req;
	private HttpServletResponse resp;
	private MultipartRequest mlpReq;
	private ProductDAO dao;
	private List<CategoryVO> ctgList;
	
	public AddAction() {
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
		String nextUrl = null;
		switch (type == null ? "" : type) {
			case "ctg": // ctg: category
				nextUrl = categoryAdd(req.getParameter("ctg"));
				break;
			case "prd": // prd: product
				if(mlpReq == null) nextUrl = productAdd(req.getParameter("prd"));
				else nextUrl = productAdd(mlpReq.getParameter("prd"));
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
				
				dao.ctAdd(cParantId, name);

				// ajax 반환
				return ajaxToJsonOk("product");
						
			default: // 잘못된 요청에 대한 예외 처리
				return null;
		}
	}

	// product
	private String productAdd(String prd) {
		String cId;
		switch (prd) {
			case "view": // 등록 페이지 요청
				// 상위 카테고리 데이터 전달
				ctgList = dao.ctSelectByParentIdIsNull();
				
				// 최상위 카테고리가 없는 경우
				if(ctgList.size() < 1) {
					System.out.println("카테고리 테이블 레코드가 없습니다.");
					req.setAttribute("message", "등록된 최상위 카테고리가 없습니다.\\n카테고리 등록으로 이동합니다.");
					return "jsp/product/createCategory.jsp";
				}
				req.setAttribute("masterList", ctgList);
				
				// 페이지 리소스 반환
				return "jsp/product/createProduct.jsp";
				
			case "subCtg" :
				if(mlpReq != null) cId = mlpReq.getParameter("cId");
				else cId = req.getParameter("cId");
//				System.out.println("cId: " + cId);
				
				// 기본 키 (cId)가 파라미터로 넘어오지 않은 겨우
				if(cId == null) req.setAttribute("redUrl", "product?cmd=add&type=prd&prd=view");
				ctgList = dao.ctSelectByParentId(Integer.parseInt(cId));
				
				// JSON 객체 생성 후 AJAX 응답
				return ajaxToJsonArray();
				
			case "confirm":
				/*
				 * 등록 완료 요청
				 * db table 데이터 수정
				 * 수정이 완료되었음을 사용자에게 반환
				 */
				// 파일 저장 폴더의 경로 가져오기
				String saveDir = req.getServletContext().getRealPath("/product_Img");
				System.out.println(saveDir);
				
				int pId = 0; // auto
				
				String subCtg = mlpReq.getParameter("subcategory");
				String supCtg = mlpReq.getParameter("category");
				System.out.println(subCtg);
				System.out.println(supCtg);
				
				int cno = (subCtg == null || subCtg.equals("") ?
						Integer.parseInt(supCtg) : Integer.parseInt(subCtg) );
				
				String name = mlpReq.getParameter("prdName");
				int price = Integer.parseInt(mlpReq.getParameter("price"));
				int quantity = Integer.parseInt(mlpReq.getParameter("quantity"));
				int wholesale = Integer.parseInt(mlpReq.getParameter("quantity"));
				int dcRate = Integer.parseInt(mlpReq.getParameter("quantity"));
				String startDate = mlpReq.getParameter("startDate");
				System.out.println(startDate);
				Date createDate = Date.valueOf(startDate);
				int isMaintain = 0; 
				Date retetionDate = null;
				
				// product description
				String category = dao.ctSelectOneByCId(cno).getName();
				String fncltyInfo = mlpReq.getParameter("fncltyInfo");
				String speclmanageInfo = mlpReq.getParameter("speclmanageInfo");
				String adviseInfo = mlpReq.getParameter("adviseInfo");
				String watercycleCodeNm = mlpReq.getParameter("watercycleCodeNm");
				String advipostngplaceCodeNmseInfo = mlpReq.getParameter("advipostngplaceCodeNmseInfo");
				String managedemanddoCodeNm = mlpReq.getParameter("managedemanddoCodeNm");
				String managelevelCodeNm = mlpReq.getParameter("managelevelCodeNm");
				
				fncltyInfo = (fncltyInfo == null ? "" : fncltyInfo);
				speclmanageInfo = (speclmanageInfo == null ? "" : speclmanageInfo);
				adviseInfo = (adviseInfo == null ? "" : adviseInfo);
				watercycleCodeNm = (watercycleCodeNm == null ? "" : watercycleCodeNm);
				advipostngplaceCodeNmseInfo = (advipostngplaceCodeNmseInfo == null
								? "" : advipostngplaceCodeNmseInfo);
				managedemanddoCodeNm = (managedemanddoCodeNm == null 
								? "" : managedemanddoCodeNm);
				managelevelCodeNm = (managelevelCodeNm == null 
								? "" : managelevelCodeNm);
				
				String description = "{ "
					+ "\"clCodeNm\": \"" + category.replaceAll("\"", "'") + "\""
					+ ", \"fncltyInfo\": \"" + fncltyInfo.replaceAll("\"", "'") + "\""
					+ ", \"speclmanageInfo\": \"" + speclmanageInfo.replaceAll("\"", "'") + "\""
					+ ", \"adviseInfo\": \"" + adviseInfo.replaceAll("\"", "'") + "\""
					+ ", \"watercycleCodeNm\": \"" + watercycleCodeNm.replaceAll("\"", "'") + "\""
					+ ", \"advipostngplaceCodeNmseInfo\": \"" + advipostngplaceCodeNmseInfo.replaceAll("\"", "'") + "\""
					+ ", \"managedemanddoCodeNm\": \"" + managedemanddoCodeNm.replaceAll("\"", "'") + "\""
					+ ", \"managelevelCodeNm\": \"" + managelevelCodeNm.replaceAll("\"", "'") + "\""
					+ " }";
				
				ProductVO productVO = new ProductVO(
					pId, cno, name, price, description, 
					quantity, wholesale, dcRate, 
					createDate, isMaintain, retetionDate);
				
				dao.addProduct(productVO);
				pId = productVO.getPId();
//				System.out.println("pId: " + pId);
				System.out.println("--- prd ----");
				System.out.println(productVO);
				
				String img1 = mlpReq.getOriginalFileName("image1");
				if(img1 != null) {
					File file1 = mlpReq.getFile("image1");
					dao.addProductImg(new ProductImgVO(pId, 0, "product_Img/" +img1));
				}
				String img2 = mlpReq.getOriginalFileName("image2");
				if(img2 != null) {
					File file2 = mlpReq.getFile("image2");
					dao.addProductImg(new ProductImgVO(pId, 1, "product_Img/" +img2));
				}
				String img3 = mlpReq.getOriginalFileName("image3");
				if(img3 != null) {
					File file3 = mlpReq.getFile("image3");
					dao.addProductImg(new ProductImgVO(pId, 2, "product_Img/" +img3));
				}
				
				System.out.println("\n--- img ----");
//				System.out.println("img1:product_Img/" + img1);
//				System.out.println("img2:product_Img/" + img2);
//				System.out.println("img3:product_Img/" + img3);
				
				req.setAttribute("message", "상품 등록 완료");
				req.setAttribute("redUrl", "product");
				
				return "jsp/product/inform.jsp";
			
			default: // 잘못된 요청에 대한 예외 처리
				return null;
		}
	}
	
	
	// common
	@SuppressWarnings("unchecked")
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
			for (CategoryVO ctg : ctgList) {
				// dao JSON 객체
				Map<String, Object> subCtg = new HashMap<String, Object>();
				subCtg.put("cId", ctg.getCId());
				subCtg.put("name", ctg.getName());
				
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
