package kr.co.moran.web.dao;

import java.io.Reader;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.BoardImgVO;
import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.LikeVO;

public class BoardDAO {
	public SqlSessionFactory factory;
	
	public BoardDAO() {
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
	
//	<!-- 노하우 게시글 총 갯수 -->
	public int getTotalCountKH() {
	    SqlSession ss = factory.openSession(true);
	    int count = ss.selectOne("kr.co.moran.board.SelectTotalCountKH");
	    ss.close();
	    return count;
	}
	
//	<!-- 노하우 전체보기(최신순) -->
	public List<HashMap<String, Object>> selectAllKH(int offset, int limit){
		SqlSession ss = factory.openSession(true);
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("offset", offset);
		params.put("limit", limit);
		
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.board.SelectAllKH",params);
		
		ss.close();
		return list;
	}
	
//	<!-- 노하우 전체보기(인기순) -->	
	public List<HashMap<String, Object>> selectAllKHOrderByViewCntDesc(int offset, int limit){
		SqlSession ss = factory.openSession(true);
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("offset", offset);
		params.put("limit", limit);
		
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.board.SelectAllKHOrderByViewCntDesc",params);
		
		ss.close();
		return list;
	}
	
//	<!-- QnA 게시글 총 갯수 -->
	public int getTotalCountQnA() {
	    SqlSession ss = factory.openSession(true);
	    int count = ss.selectOne("kr.co.moran.board.SelectTotalCountQnA");
	    ss.close();
	    return count;
	}
	
//	<!-- QnA 전체보기(최신순) -->
	public List<HashMap<String, Object>> selectAllQnA(int offset, int limit){
		SqlSession ss = factory.openSession(true);
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("offset", offset);
		params.put("limit", limit);
		
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.board.SelectAllQnA",params);
		ss.close();
		return list;
	}
	
//	<!-- QnA 전체보기(인기순) -->
	public List<HashMap<String, Object>> selectAllQnAOrderByViewCntDesc(int offset, int limit){
		SqlSession ss = factory.openSession(true);
		
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("offset", offset);
		params.put("limit", limit);
		
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.board.SelectAllQnAOrderByViewCntDesc", params);
		
		ss.close();
		return list;
	}
	
//	<!-- 글 디테일 -->	
	public HashMap<String, Object> selectBoardBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		HashMap<String, Object> vo = ss.selectOne("kr.co.moran.board.SelectBoardBybId", bId);
		
		ss.close();
		return vo;
	}
	
//	<!-- QnA 글 작성 -->
	public void insertQnA(BoardVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertQnA",vo);
		
		ss.close();
	}
	
//	<!-- 노하우 글 작성 -->
	public void insertKH(BoardVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertKH",vo);
		
		ss.close();
	}

//	<!-- 글 수정 -->
	public void modifyBoardBybId(@Param("bId") int bId, @Param("title") String title, @Param("contents") String contents) {
		SqlSession ss = factory.openSession(true);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("bId", bId);
		params.put("title", title);
		params.put("contents", contents);
		
		ss.update("kr.co.moran.board.ModifyBoardBybId", params);
		
		ss.close();
		
	}
	
//	<!-- 글 삭제 -->
	public void deleteBoardBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.board.DeleteBoardBybId",bId);
		
		ss.close();
	}

//	<!-- 조회수 증가 -->
	public void modifyBoardViewCntBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.board.ModifyBoardViewCntBybId", bId);
		
		ss.close();
	}
	
//	<!-- 게시글 좋아요 수 증가 -->
	public void modifyBoardLikeCntPlusBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.board.ModifyBoardLikeCntPlusBybId", bId);
		
		ss.close();
	}
	
//	<!-- 게시글 좋아요 수 감소 -->
	public void modifyBoardLikeCntMinusBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.board.ModifyBoardLikeCntMinusBybId", bId);
		
		ss.close();
	}
	
//	<!-- 게시글 좋아요 추가 -->
	public void insertBoardLikeBybId(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertBoardLikeBybId", vo);
		
		ss.close();
	}
	
//	<!-- 게시글 좋아요 삭제 -->
	public void deleteBoardLikebyBid(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.delete("kr.co.moran.board.DeleteBoardLikeBybId",vo);
		ss.close();
	}
	
// 	<!-- 댓글 좋아요 -->
	public void insertCommentLikeBybId(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertCommentLikeBybId", vo);
		
		ss.close();
	}
	
//	게시글 좋아요 여부 확인, 반환된 lvo를 참고하여 좋아요 여부 확인
	public LikeVO SelectBoardLikeBybIdandmId(LikeVO vo) {
		SqlSession ss = factory.openSession(true);
		LikeVO lvo = ss.selectOne("kr.co.moran.board.SelectBoardLikeBybIdandmId", vo);
		
		ss.close();
		return lvo;
	}
	
//	<!-- 좋아요한 게시글 보기 -->
	public List<HashMap<String, Object>> selectBoardLikeBymId(int mId) {
		SqlSession ss = factory.openSession(true);
		List<HashMap<String, Object>> list = ss.selectList("kr.co.moran.board.SelectBoardLikeBymId", mId);
		
		System.out.println("list :" + list);
		ss.close();
		return list;
		
	}
	
//	<!-- 내가 쓴 글 전체보기 파라미터는 mId -->
	public List<HashMap<String, Object>> selectAllBoardBymId(int mId) {
		SqlSession ss = factory.openSession(true);
		List<HashMap<String, Object>> list =  ss.selectList("kr.co.moran.board.SelectAllBoardBymId", mId);
		
		ss.close();
		return list;
	}
	
//	<!-- 게시글 작성 시 이미지 입력 -->
	public void insertBoardImg(BoardImgVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertBoardImg", vo);
		ss.close();
	}
	
//	<!-- 글에 댓글이 몇개 있는지 구하기 -->
	public List<HashMap<String, Object>> selectCountAllComment(){
		SqlSession ss = factory.openSession(true);
		List<HashMap<String, Object>> hm = ss.selectList("kr.co.moran.board.SelectCountAllComment");
		
		ss.close();
		return hm;
	}
	
	/* 특정 게시글 댓글 몇개 있는지 구하기 */
	public HashMap<String, Object> selectCountAllCommentBybId(int bId){
		SqlSession ss = factory.openSession(true);
		HashMap<String, Object> hm = ss.selectOne("kr.co.moran.board.SelectCountAllComment", bId);
		
		ss.close();
		return hm;
	}
	
}
