package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ProductQaDAO {
	SqlSessionFactory factory;
	SqlSession ss;
	public ProductQaDAO() {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(r);
			r.close();
			ss = factory.openSession(true);
		} catch (IOException e) {
			System.out.println("config.xml 파일 찾기 실패");
			e.printStackTrace();
		}
	}
	
	public List<Map<String, Object>>selectAllQaByPdId(int pdId){
		SqlSession ss = factory.openSession(true);
		List<Map<String, Object>> list = ss.selectList("kr.co.moran.productqa.selectAllQaByPdId", pdId);
		ss.close();
		return list;
	}
	
	
}
