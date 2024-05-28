package kr.co.moran.web.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;

public class IndexFormAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    // ProductDAO 객체 생성
	    ProductDAO dao = new ProductDAO();

	    // 총 게시물 건수를 가져옴
	    int totalCount = dao.pdPopTotal();

	    // 한 페이지당 게시물 수를 4로 설정
	    int recordPerPage = 4;

	    // 총 페이지 수를 계산 (총 게시물 수를 페이지당 게시물 수로 나누어 계산)
	    int totalPage = (totalCount % recordPerPage == 0) ?
	            totalCount / recordPerPage : totalCount / recordPerPage + 1;

	    // 현재 페이지 번호 초기화
	    int currentPage = 0;

	    // 요청 파라미터에서 "page" 값을 가져옴
	    String page = req.getParameter("page");

	    // 현재 페이지 번호 출력 (디버깅용)
	    System.out.println("[IndexFormAction] page = " + page);

	    // 페이지 번호가 null이 아니면 정수로 변환, 그렇지 않으면 1로 설정
	    if (page != null) {
	        currentPage = Integer.parseInt(page);
	    } else {
	        currentPage = 1;
	    }

	    // 현재 페이지 번호 출력 (디버깅용)
	    System.out.println("[IndexFormAction] currentPage = " + currentPage);

	    // 시작 번호 계산 ((현재 페이지 - 1) * 페이지당 게시물 수)
	    int startNo = (currentPage - 1) * recordPerPage;

	    // 끝 번호 계산 (시작 번호 + 페이지당 게시물 수)
	    int endNo = startNo + recordPerPage;

	    // 시작 페이지 번호 초기화
	    int startPage = 1;

	    // 끝 페이지 번호 초기화 (총 페이지 수로 설정)
	    int endPage = totalPage;

	    // 현재 페이지가 5 이하인 경우, 시작 페이지를 1로 설정
	    if (currentPage <= 5) {
	        startPage = 1;
	        // 현재 페이지가 6 이상인 경우, 시작 페이지를 (현재 페이지 - 5)로 설정
	    } else if (currentPage >= 6) {
	        startPage = currentPage - 5;
	    }

	    // 총 페이지 수와 현재 페이지의 차이가 5 이하인 경우, 끝 페이지를 총 페이지 수로 설정
	    if (totalPage - currentPage <= 5) {
	        endPage = totalPage;
	        // 총 페이지 수와 현재 페이지의 차이가 5보다 큰 경우
	    } else if (totalPage - currentPage > 5) {
	        // 현재 페이지가 5 이하인 경우
	        if (currentPage <= 5) {
	            // 총 페이지 수가 10보다 크면 끝 페이지를 10으로 설정, 그렇지 않으면 총 페이지 수로 설정
	            if (totalPage > 10) {
	                endPage = 10;
	            } else {
	                endPage = totalPage;
	            }
	        }
	    }

	    // 시작 번호부터 페이지당 게시물 수만큼 상품 리스트를 가져옴
	    List<ProductVO> list = dao.pdSelectPop(startNo, recordPerPage);

	    // 상품 이미지 리스트 생성
	    List<ProductImgVO> imgList = new ArrayList<ProductImgVO>();

	    // 상품 리스트를 순회하면서 각 상품의 대표 이미지를 가져와 이미지 리스트에 추가
	    for (ProductVO v : list) {
	        imgList.add(dao.piSelsctBigimgByPId(v.getPId()));
	    }

	    // 상품 리스트 출력 (디버깅용)
	    System.out.println("[IndexFormAction] " + list);

	    // 요청 객체에 시작 번호, 끝 번호, 상품 리스트, 상품 이미지 리스트, 현재 페이지, 시작 페이지, 끝 페이지, 총 페이지 수를 속성으로 설정
	    req.setAttribute("startNo", startNo);
	    req.setAttribute("endNo", endNo);
	    req.setAttribute("productList", list);
	    req.setAttribute("productImgList", imgList);
	    req.setAttribute("currentPage", currentPage);
	    req.setAttribute("startPage", startPage);
	    req.setAttribute("endPage", endPage);
	    req.setAttribute("totalPage", totalPage);

	    // "index.jsp"를 반환하여 해당 페이지로 포워딩
	    return "index.jsp";
	}
}
