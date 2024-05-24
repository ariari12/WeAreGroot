package kr.co.moran.web.action.Review;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ReviewDAO;
import kr.co.moran.web.vo.ReviewImgVO;
import kr.co.moran.web.vo.ReviewVO;

public class ReviewWriteAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		int score = Integer.parseInt(req.getParameter("score"));
		String contents = req.getParameter("contents");
		String riImg = req.getParameter("riImg");
		
		ReviewVO rvo = new ReviewVO();
		rvo.setScore(score);
		rvo.setContents(contents);
		
		ReviewImgVO rivo = new ReviewImgVO();
		
		ReviewDAO rdao = new ReviewDAO();
		
		int rId = rdao.insertReview(rvo);
		
		rivo.setRiImg(riImg);
		rivo.setRId(rId);
		rdao.insertReviewImg(rivo);
		req.setAttribute("", rdao);
		return "../views/reviewWriteForm.jsp";
	}

}
