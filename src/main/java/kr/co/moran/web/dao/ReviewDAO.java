package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.ReviewImgVO;
import kr.co.moran.web.vo.ReviewVO;

public class ReviewDAO {
	public SqlSessionFactory factory;
	
	
	public ReviewDAO() {
		Reader r;
		try {
			r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(r);
			
			r.close();
		} catch (IOException e) {
			System.out.println("config.xml파일을 찾을 수 없습니다");
			e.printStackTrace();
		}
	}
	
	public List<ReviewVO> selectReviewBypdId(int pdId){
		SqlSession ss = factory.openSession(true);
		List<ReviewVO> list = ss.selectList("kr.co.moran.review.SelectReviewBypdId",pdId);
		ss.close();
		return list;
	}
	
	
	public List<ReviewImgVO> selectReviewImgByrId(int rId){
		SqlSession ss = factory.openSession(true);
		List<ReviewImgVO> list = ss.selectList("kr.co.moran.review.SelectReviewImgByrId",rId);
		ss.close();
		return list;
	}
	
	// 상품 평점
	public Object gradeByPdId(int pdId) {
		SqlSession ss = factory.openSession(true);
		Object score = ss.selectOne("kr.co.moran.review.gradeByPdId", pdId);
		ss.close();
		return score;
	}
	
	// 상품 리뷰 수
	public Object cntByPdId(int pdId) {
		SqlSession ss = factory.openSession(true);
		Object cnt = ss.selectOne("kr.co.moran.review.cntByPdId", pdId);
		ss.close();
		return cnt;
	}
	
	public int insertReview(ReviewVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.review.InsertReview",vo);
		ss.close();
		
		return vo.getRId(); 
	}
	
	public void insertReviewImg(ReviewImgVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.review.InsertReviewImg", vo);
		
		ss.close();
	}
}
