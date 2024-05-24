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
	
	public void deleteComment(int cId) {
		SqlSession ss = factory.openSession(true);
		ss.delete("kr.co.moran.comment.DeleteComment",cId);
		
		ss.close();
	}

	public void modifyComment(@Param("cId") int cId, @Param("contents") String contents) {
		SqlSession ss = factory.openSession(true);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("contents", contents);
		params.put("cId", cId);
		ss.update("kr.co.moran.comment.ModifyComment", params);
		
		ss.close();
	}
	
	
	
}
