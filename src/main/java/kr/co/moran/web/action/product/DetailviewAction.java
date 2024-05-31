
package kr.co.moran.web.action.product;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mysql.cj.xdevapi.JsonArray;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.dao.ProductQaDAO;
import kr.co.moran.web.dao.ReviewDAO;
import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;
import kr.co.moran.web.vo.ReviewImgVO;
import kr.co.moran.web.vo.ReviewVO;
import kr.co.moran.web.vo.member.MemberVO;

public class DetailviewAction implements Action {
	
	private HttpServletRequest req;
	private HttpServletResponse resp;
	
	private ProductDAO productDAO;
	private ReviewDAO reviewDAO;
	private MemberDAO memberDAO;

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		this.req = req;
		this.resp = resp;

		// dao 인스턴스 받기
		productDAO = new ProductDAO();
		reviewDAO = new ReviewDAO();
		memberDAO = new MemberDAO();
		
		if(req.getParameter("no") == null) {
			return "product/listView.jsp";
		}
		int pId = Integer.parseInt(req.getParameter("no"));
//		System.out.println(pId);

		Object score = reviewDAO.gradeByPdId(pId);
		req.setAttribute("score", score == null ? "0.0" : String.format("%.2f", score));
		Object cnt = reviewDAO.cntByPdId(pId);
		req.setAttribute("cnt", cnt == null ? "0" : String.valueOf(cnt));
		
		String type = req.getParameter("type");
		switch (type == null ? "" : type) {
		case "rev": {
			return prdReview(pId);
		}
		case "qna": {
			return prdQna(pId);
		}
		default:
			return detailviwe(pId);
		}
	}
	
	private String detailviwe(int pId) {
		// 상품정보 가져오기
		ProductVO productVOs = productDAO.pdSelsctOneByPId(pId);
		List<Integer> popPIdList = productDAO.pdSelectPopByPId();
		System.out.println(productVOs);
		if(productVOs == null) { // 상품 정보가 없을 경우
			
			// admin인 경우 보관목록도 가져옴
			MemberVO memberVO = (MemberVO)req.getSession().getAttribute("memberVO");
			if(memberVO != null && memberVO.getAdmintype() > 0) {
				productVOs = productDAO.selectByPIdAdmin(pId);
				System.out.println(productVOs);
			}
			else {
				return null;
			}
		}
		List<ProductImgVO> imgs = productDAO.piSelsctByPId(pId);
		
		// 모든 상품 목록 가져오기
		req.setAttribute("pdList", productVOs);
		req.setAttribute("popPIdList", popPIdList);
		req.setAttribute("imgs", imgs);
		
		productDAO.closeSession();
		return "jsp/product/detailView.jsp";
	}

	@SuppressWarnings("unchecked")
	private String prdReview(int no) {
		// AJAX 응답 반환할 JSON 객체
		JSONObject returnJson = new JSONObject();

		// Review 가져오기
		List<ReviewVO> reviewVOs = reviewDAO.selectReviewBypdId(no);
		System.out.println("reviewVOs: " + reviewVOs);
		
		// ReviewList JSON 생성
		JSONArray rvJsonArray = new JSONArray();
		for (ReviewVO reviewVO : reviewVOs) {
			
			// Review Img 가져오기
			List<ReviewImgVO> reviewImgVOs = reviewDAO.selectReviewImgByrId(
					reviewVO.getRId());
			// JSON ArayList 생성
			JSONArray rvImgJsonArray = new JSONArray();
			for (ReviewImgVO imgVO : reviewImgVOs) {
				rvImgJsonArray.add(imgVO.getRiImg());
			}
			
			System.out.println(reviewVO.getMId());
			MemberVO member = memberDAO.selectMemberById(reviewVO.getMId());
			System.out.println(member);
			
			// reviewVO JSON 객체
			JSONObject reviewJSON = new JSONObject();
			if(member != null) {
				reviewJSON.put("nick", member.getNick());
			}
			reviewJSON.put("contents", reviewVO.getContents());
			reviewJSON.put("imgs", rvImgJsonArray);
			reviewJSON.put("regDate", reviewVO.getRegDate());
			reviewJSON.put("score", reviewVO.getScore());
			
			rvJsonArray.add(reviewJSON);
		}
		returnJson.put("reviews", rvJsonArray);
		
		returnJson.put("result", "ok");
		try {
			resp.getWriter().print(returnJson.toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "ajax";
	}
	
	@SuppressWarnings("unchecked")
	private String prdQna(int no) {
		
		ProductQaDAO pqaDao = new ProductQaDAO();
		
		List<Map<String,Object>> list = pqaDao.selectAllQaByPdId(no);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		JSONArray jArr = new JSONArray();
		
		for(Map<String, Object> map : list) {
			map.put("regdate", sdf.format(map.get("regdate")));
			JSONObject jObj = new JSONObject(map);
			jArr.add(jObj);
		}
		try {
			resp.getWriter().print(jArr.toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "ajax";
	}
	
}
