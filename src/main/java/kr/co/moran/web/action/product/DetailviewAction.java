package kr.co.moran.web.action.product;

import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.dao.ReviewDAO;
import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;
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
//		System.out.println(v);
		if(productVOs == null) { // 상품 정보가 없을 경우
			return null;
		}
		List<ProductImgVO> imgs = productDAO.piSelsctByPId(pId);
		
		// 모든 상품 목록 가져오기
		req.setAttribute("pdList", productVOs);
		req.setAttribute("popPIdList", popPIdList);
		req.setAttribute("imgs", imgs);
		
		productDAO.closeSession();
		return "jsp/product/detailView.jsp";
	}

	private String prdReview(int no) {
		Map<String, Object> returnJson = new HashMap<String, Object>();
			
		List<ReviewVO> reviewVOs = reviewDAO.selectReviewBypdId(no);
//		System.out.println("reviewVOs: " + reviewVOs);
		
		if(returnJson != null || returnJson.size() > 0) {
			
			// JSON ArayList 생성
			JSONArray rvJsonArray = new JSONArray();
			for (int i = 0; i < reviewVOs.size(); i++) {
				// dao JSON 객체
				Map<String, Object> reviewVO = new HashMap<String, Object>();
				reviewVO.put("rId", reviewVOs.get(i).getRId());
				
				MemberVO member = memberDAO.selectMemberWithAddressById(
						reviewVOs.get(i).getMId());
				memberDAO.factory.openSession().commit();
				
				System.out.println(member);
				if(member != null) {
					reviewVO.put("nick", member.getNick());
				}
				reviewVO.put("contents", reviewVOs.get(i).getContents());
				reviewVO.put("regDate", reviewVOs.get(i).getRegDate());
				reviewVO.put("score", reviewVOs.get(i).getScore());
				
				rvJsonArray.add(new JSONObject(reviewVO));
			}
			returnJson.put("reviews", rvJsonArray);
		}
		else {
			returnJson.put("reviews", null);
		}
		
		returnJson.put("result", "ok");
		try {
			resp.getWriter().print(new JSONObject(returnJson).toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "ajax";
	}
	
	private String prdQna(int no) {
		// Map<String, Object> revNums = reviewDAO.gradeAndCntByPdId(no);
		//revNums.put("result", "ok");

//		try {
//			resp.getWriter().print(new JSONObject(revNums).toJSONString());
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
		
		return "ajax";
	}
	
}
