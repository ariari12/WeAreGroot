package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.BoardVO;
import kr.co.moran.web.vo.CommentVO;

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
	
	public List<CommentVO> selectCommentBybId(int bId) {
		
		SqlSession ss = factory.openSession(true);
		List<CommentVO> list = ss.selectList("kr.co.moran.comment.SelectCommentBybId", bId);
		
		System.out.println(list);
		ss.close();
		return list;

	}
	
	public void insertComment(CommentVO vo) {
		SqlSession ss = factory.openSession(true);
		ss.insert("kr.co.moran.comment.InsertComment",vo);
		
		ss.close();
	}
	
}
