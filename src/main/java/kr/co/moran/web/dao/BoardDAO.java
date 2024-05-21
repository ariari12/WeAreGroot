package kr.co.moran.web.dao;

import java.io.Reader;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
	
	public List<BoardVO> selectAllKH(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllKH");
		
		ss.close();
		return list;
	}
	
	public List<BoardVO> selectAllKHOrderByViewCntDesc(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllKHOrderByViewCntDesc");
		
		ss.close();
		return list;
	}
	
	public List<BoardVO> selectAllQnA(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllQnA");
		
		ss.close();
		return list;
	}
	
	public List<BoardVO> selectAllQnAOrderByViewCntDesc(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllQnAOrderByViewCntDesc");
		
		ss.close();
		return list;
	}

	public BoardVO selectQnABybId(int bId) {
		SqlSession ss = factory.openSession(true);
		BoardVO vo = ss.selectOne("kr.co.moran.board.SelectQnABybId", bId);
		
		ss.close();
		return vo;
	}
	
	public BoardVO selectKHBybId(int bId) {
		SqlSession ss = factory.openSession(true);
		BoardVO vo = ss.selectOne("kr.co.moran.board.SelectKHBybId", bId);
		
		ss.close();
		return vo;
	}
	
	public void insertQnA(BoardVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertQnA",vo);
		
		ss.close();
	}
	
	public void insertKH(BoardVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.InsertKH",vo);
		
		ss.close();
	}

	public void modifyKHBybId(@Param("bId") int bId, @Param("title") String title, @Param("contents") String contents) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.board.ModifyKHBybId");
		
		ss.close();
		
	}
}
