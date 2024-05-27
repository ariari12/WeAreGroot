package kr.co.moran.web.dao;

import java.util.HashMap;
import java.util.List;

import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.vo.ReviewImgVO;
import kr.co.moran.web.vo.ReviewVO;

public class TestMain {

	public static void main(String[] args) {
		BoardDAO dao = new BoardDAO();
		
		ReviewVO rvo = new ReviewVO();
		ReviewImgVO rivo = new ReviewImgVO();
		
		List<HashMap<String, Object>> list = dao.selectAllBoardBymId(1);
		System.out.println("list : " + list);
		for (HashMap<String, Object> hashMap : list) {
			System.out.println(hashMap.get("contents"));
		}
		
		
	}
	

}
