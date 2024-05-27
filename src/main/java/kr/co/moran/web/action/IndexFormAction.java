package kr.co.moran.web.action;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.dao.ProductDAO;
import kr.co.moran.web.vo.ProductVO;

public class IndexFormAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		ProductDAO dao = new ProductDAO();
		// 총 게시물 건수를 출력
		int totalCount = dao.pdPopTotal();
		// 한 페이지당 게시물수: 4
		int recordPerPage = 4;
		
		// 총 페이지 수
		int totalPage = (totalCount % recordPerPage == 0) ? 
						 totalCount / recordPerPage : totalCount / recordPerPage + 1;
		
		// 현재 페이지 번호
		int currentPage=0;
		String page = req.getParameter("page");
		if(page!=null) {
			currentPage = Integer.parseInt(page);
		} else {
			currentPage = 1;
		}
		
		// 시작번호
		int startNo = (currentPage - 1) * recordPerPage;
		//  1  => (1-1)*20+1
		//  2  => (2-1)*20+1
		//  3  => (3-1)*20+1
		
		// 끝번호
		int endNo = currentPage * recordPerPage-1;
		
		// 시작페이지 번호
		int startPage = 1;
		
		// 끝페이지 번호
		int endPage = totalPage;
		
		// 시작페이지를 현재 페이지 기준으로 앞에 5개만
		if (currentPage <= 5) {
			startPage = 1;
		} else if (currentPage >= 6) {
			startPage = currentPage - 5;
		}
		
		// 끝페이지는 현재 페이지 기준으로 다음 5개만
		//   305      -     302
		if (totalPage - currentPage <= 5) {
			endPage = totalPage;
		} else if (totalPage - currentPage > 5) {
			if (currentPage <= 5) {
				if (totalPage > 10) {
					endPage = 10;
				} else {
					endPage = totalPage;
				}
			}
		}
		
		List<ProductVO> list = dao.pdSelectPop(startNo, recordPerPage);
		//dao.piSelsctBigimgByPId();
		
		req.setAttribute("startNo", startNo);
		req.setAttribute("endNo", endNo);
		req.setAttribute("productList", list);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("totalPage", totalPage);
		return "index.jsp";
	}

}
