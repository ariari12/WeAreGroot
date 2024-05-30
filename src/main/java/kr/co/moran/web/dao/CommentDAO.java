package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.CommentVO;
import kr.co.moran.web.vo.LikeVO;

public class CommentDAO {
	public SqlSessionFactory factory;
	
	public CommentDAO() {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(r);
			
			r.close();
			
			
		} catch (IOException e) {
			System.out.println("config.xml파일을 찾을 수 없습니다");
			e.printStackTrace();
		}
		
	}
//	<!-- Board의 댓글 목록 -->
	public List<HashMap<String, Object>> selectCommentBybId(int bId) {
		
		SqlSession ss = factory.openSession(true);
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.comment.SelectCommentBybId", bId);
		
		ss.close();
		return list;

	}
	
//	<!-- 내가 쓴 댓글 목록 -->
	public List<HashMap<String, Object>> selectCommentBymId(int mId){
		SqlSession ss = factory.openSession(true);
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.comment.SelectCommentBymId", mId);
		
		ss.close();
		return list;
	}
	
//	<!-- 댓글 작성 -->
	public void insertComment(CommentVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.comment.InsertComment",vo);
		
		ss.close();
	}
	
//	<!-- 댓글 삭제 -->
	public void deleteComment(int cId) {
		SqlSession ss = factory.openSession(true);
		ss.delete("kr.co.moran.comment.DeleteComment",cId);
		
		ss.close();
	}

//	<!-- 댓글 수정 -->
	public void modifyComment(@Param("cId") int cId, @Param("contents") String contents) {
		SqlSession ss = factory.openSession(true);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("contents", contents);
		params.put("cId", cId);
		ss.update("kr.co.moran.comment.ModifyComment", params);
		
		ss.close();
	}
	
//	<!-- 댓글 좋아요 수 증가 -->
	public void modifyCommentLikeCntPlusBycId(int cId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.comment.ModifyCommentLikeCntPlusBycId", cId);
		ss.close();
	}
	
//	<!-- 댓글 좋아요 수 감소 -->
	public void modifyCommentLikeCntMinusBycId(int cId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.comment.ModifyCommentLikeCntMinusBycId", cId);
		ss.close();
	}
	
	//댓글의 댓글 등록
	public void insertReComment(CommentVO cvo) {
		SqlSession ss= factory.openSession(true);
		ss.insert("kr.co.moran.comment.InsertReComment", cvo);
		ss.close();
	}
	
	//이벤트 댓글조회
	public List<Map<String, Object>> selectCommentByEid(int eId) {
		SqlSession ss = factory.openSession(true);
		List<Map<String, Object>> list = ss.selectList("kr.co.moran.comment.SelectCommentByEid",eId);
		ss.close();
		return list;
	}

	public int InsertCommentByAny(CommentVO cvo) {
		SqlSession ss = factory.openSession(true);
		int res = ss.insert("kr.co.moran.comment.InsertCommentByAny", cvo);
		ss.close();
		return res;
	}

	public List<Map<String, Object>> selectCommentByCid(int cId) {
		SqlSession ss = factory.openSession(true);
		List<Map<String, Object>> list = ss.selectList("kr.co.moran.comment.SelectCommentByCid", cId);
		ss.close();
		return list;
	}
	
	
	
	
//	댓글 좋아요 추가
	public void insertCommentLikeBycId(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.comment.InsertCommentLikeBycId", vo);
		ss.close();
	}
	
//	댓글 좋아요 삭제
	public void deleteCommentLikeBycId(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.delete("kr.co.moran.comment.DeleteCommentLikebycid", vo);
		ss.close();
	}
	
//	게시글 좋아요 여부 확인, 반환된 lvo를 참고하여 좋아요 여부 확인
	public LikeVO selectCommentLikeBycIdandmId(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		LikeVO lvo = ss.selectOne("kr.co.moran.comment.SelectCommentLikeBybIdandmId", vo);
		
		ss.close();
		return lvo;
	}
}
