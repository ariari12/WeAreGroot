package kr.co.moran.web.dao;

import java.io.Reader;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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
	
	public List<BoardVO> SelectAllKH(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllKH");
		
		ss.close();
		return list;
	}
	
	public List<BoardVO> SelectAllKHOrderByViewCntDesc(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllKHOrderByViewCntDesc");
		
		ss.close();
		return list;
	}
	
	public List<BoardVO> SelectAllQnA(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllQnA");
		
		ss.close();
		return list;
	}
	
	public List<BoardVO> SelectAllQnAOrderByViewCntDesc(){
		SqlSession ss = factory.openSession(true);
		List<BoardVO> list = ss.selectList("kr.co.moran.board.SelectAllQnAOrderByViewCntDesc");
		
		ss.close();
		return list;
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
}
