package kr.co.moran.web.dao;

import java.util.List;

import kr.co.moran.web.vo.ReviewImgVO;
import kr.co.moran.web.vo.ReviewVO;

public class TestMain {

	public static void main(String[] args) {
		ReviewDAO dao = new ReviewDAO();
		
		ReviewVO rvo = new ReviewVO();
		ReviewImgVO rivo = new ReviewImgVO();
		
		List<ReviewVO> rlist = dao.selectReviewBypdId(14697);
		for (ReviewVO reviewVO : rlist) {
			System.out.println(reviewVO);
			List<ReviewImgVO> rilist = dao.selectReviewImgByrId(reviewVO.getRId());
			for (ReviewImgVO reviewImgVO : rilist) {
				System.out.println(reviewImgVO);
			}
			System.out.println("\n\n\n");
		}
	}

}
