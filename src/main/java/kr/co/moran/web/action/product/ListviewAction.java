
package kr.co.moran.web.action.product;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.ProductVO;
import kr.co.moran.web.vo.member.MemberVO;

public class ListviewAction implements Action {
	private static final int PAGE_QUANTITY = 12;
	
	private ProductDAO dao;
	private List<Integer> hotPIds;
	private int maxPage;
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		dao = new ProductDAO();
		hotPIds = new ArrayList<Integer>();
		dao.pdAutoDelete();
		
		// 페이지 수 가져오기 없을 경우 첫 페이지
		int currentPage = req.getParameter("page") == null ? 0 
				: Integer.parseInt(req.getParameter("page")) -1;
		
		// 전체 상품 수에서 현재 페이지에 첫 상품의 수
		int startNum = currentPage * PAGE_QUANTITY;
//		System.out.println("start: " + startNum);
				
		String type = req.getParameter("type");
		
		// type에 맞는 상품목록을 가져올 list 선언
		List<ProductVO> prdlist = new ArrayList<ProductVO>();
		
		// 상품리스트 가져오기
		switch (type == null ? "" : type) {
			case "latest": prdlist = latestType(startNum, PAGE_QUANTITY); break;
			case "popul": prdlist = populType(startNum, PAGE_QUANTITY); break;
			case "ctg": prdlist = categoryType(startNum, PAGE_QUANTITY,
				 req.getParameter("ctg")); break;
			case "search": 
				String keyword = req.getParameter("search");
				prdlist = searchType(startNum, PAGE_QUANTITY, keyword); break;
			case "save": 
				prdlist = saveType(req, startNum, PAGE_QUANTITY); break;
			case "sold-out": 
				prdlist = soldOutType(req, startNum, PAGE_QUANTITY); break;
			
			default: prdlist = noneType(startNum, PAGE_QUANTITY);
		}
//		System.out.println(hotPIds);
		
		// 속성변수 삽입
		req.setAttribute("pdList", prdlist);
		req.setAttribute("currentPage", currentPage +1);
		req.setAttribute("maxPage", maxPage);
		req.setAttribute("hotPIds", hotPIds);
		
		dao.closeSession(); // db session 종료
		
		if(type != null && 
			(type.equals("save") || type.equals("sold-out"))
		) {
			return "jsp/product/savelist.jsp";
		}
		return "jsp/product/listView.jsp";
	}
	
	
	// 품절 목록 조회
	private List<ProductVO> soldOutType(HttpServletRequest req, int start, int pageNum) {
		MemberVO memberVO = (MemberVO)req.getSession().getAttribute("memberVO");
		if(memberVO != null && memberVO.getAdmintype() > 0) {
			// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
			maxPage = (int) Math.ceil(dao.pdSoldOutCnt() / PAGE_QUANTITY);
			List<ProductVO> prdList = dao.pdSelectBySoldOut(start, pageNum);
			hotPIds = null;
			return prdList;
		}
		
		return null;
	}


	// 보관처리된 상품 리시트 조회 *관리자 용*
	private List<ProductVO> saveType(HttpServletRequest req, int start, int pageNum) {
		MemberVO memberVO = (MemberVO)req.getSession().getAttribute("memberVO");
		if(memberVO != null && memberVO.getAdmintype() > 0) {
			// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
			maxPage = (int) Math.ceil(dao.pdSaveCnt() / PAGE_QUANTITY);
			List<ProductVO> prdList = dao.pdSelectBySave(start, pageNum);
			hotPIds = null;
			return prdList;
		}
		return null;
	}

	// 타입이 없으면 상품리스트 전체가져오기
	private List<ProductVO> noneType(int start, int pageNum) {		
		// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
		maxPage = (int) Math.ceil(dao.pdTotal() / PAGE_QUANTITY);
		List<ProductVO> prdList = dao.pdSelectPage(start, pageNum);
		hitPrdocuts(prdList);
		return prdList;
	}

	// 최신 순으로 상품가져오기
	private List<ProductVO> latestType(int start, int pageNum) {		
		// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
		maxPage = (int) Math.ceil(dao.pdLatestTotal() / PAGE_QUANTITY);
		List<ProductVO> prdList = dao.pdSelectLatest(start, pageNum);
		hitPrdocuts(prdList);
		return prdList;
	}

	// 인기상품 가져오기
	private List<ProductVO> populType(int start, int pageNum) {		
		// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
		maxPage = (int) Math.ceil(dao.pdPopTotal() / PAGE_QUANTITY);
		List<ProductVO> prdList = dao.pdSelectPop(start, pageNum);
		
		if(start < (3 *12)) {
			for(ProductVO v : prdList) {
				hotPIds.add(v.getPId());
			}
		}
		return prdList;
	}

	// 카테고리 상품 가져오기
	private List<ProductVO> categoryType(int start, int pageNum, String strCId) {	
		if(strCId == null) {
			return noneType(start, pageNum);
		}
		// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
		maxPage = (int) Math.ceil(dao.pdcategoryTotal() / PAGE_QUANTITY);
		List<ProductVO> prdList = 
				dao.pdSelectByCId(start, pageNum, Integer.parseInt(strCId));
		hitPrdocuts(prdList);
		return prdList;
	}
	
	// 검색 상품 가져오기
	private List<ProductVO> searchType(int start, int pageNum, String keyword) {
		// 전체 상품 종류 갯수 / 1페이지 당 상품 종류 수, 나머지가 1이상 이면 1페이지 증가
		maxPage = (int) Math.ceil(dao.pdPopTotal() / PAGE_QUANTITY);
		List<ProductVO> prdList = dao.pdSelectBySearch(start, pageNum, keyword);
		hitPrdocuts(prdList);
		return prdList;
	}
	
	// 인기순으로 정렬하고 페이지마다 일정 수 만큼 인기순 태그지정
	private void hitPrdocuts(List<ProductVO> prdlist) {
		// 인기순 정렬용 리스트
		Map<Integer, Integer> prdTotals = new HashMap<Integer, Integer>();
		
		// 가져온 상품리스트에서 주문자 수 가져오기
		for (ProductVO prd : prdlist) {
			int totalBuy = dao.orderTotalByPid(prd.getPId());
			prdTotals.put(prd.getPId(), totalBuy);
		}

		// 주문자 순으로 정렬
		List<Integer> keys = new ArrayList<Integer>(prdTotals.keySet());
		keys.sort(new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return prdTotals.get(o1).compareTo(prdTotals.get(o2));
			}
		});
		
		// 인기순 상위 5개 가져오기(인기태그 용)
		if(keys.size() >= 5) {
			for (int i = 0; i < 5; i++) {
				hotPIds.add(keys.get(i));
			}
		}
		else {
			for(int k : keys) {
				hotPIds.add(k);
			}
		}
	}
	
}
