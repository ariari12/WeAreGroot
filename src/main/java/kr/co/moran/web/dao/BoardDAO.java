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

import kr.co.moran.web.vo.BoardVO;

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
	
	
//	<!-- 노하우 전체보기(최신순) -->
	public List<BoardVO> selectAllKH(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllKH");
		
		ss.close();
		return list;
	}
	
//	<!-- 노하우 전체보기(인기순) -->	
	public List<BoardVO> selectAllKHOrderByViewCntDesc(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllKHOrderByViewCntDesc");
		
		ss.close();
		return list;
	}
	
//	<!-- QnA 전체보기(최신순) -->
	public List<BoardVO> selectAllQnA(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllQnA");
		
		ss.close();
		return list;
	}
	
//	<!-- QnA 전체보기(인기순) -->
	public List<BoardVO> selectAllQnAOrderByViewCntDesc(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllQnAOrderByViewCntDesc");
		
		ss.close();
		return list;
	}
	
//	<!-- 글 디테일 -->	
	public BoardVO selectBoardBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		BoardVO vo = ss.selectOne("kr.co.moran.board.SelectBoardBybId", bId);
		
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
	
//	<!-- 좋아요 수 증가 -->
	public void modifyBoardLikeCntBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		ss.update("kr.co.moran.board.ModifyBoardLikeCntBybId", bId);
		
		ss.close();
	}
}
