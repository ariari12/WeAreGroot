package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.productTest.ProductVO;


public class ProductTestDAO {
	public SqlSessionFactory factory;
	public ProductTestDAO() {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();			
			factory = builder.build(r);
			r.close(); //다른 브랜치도 추가
		} catch (IOException e) {
			System.out.println("config.xml 파일을 찾을 수 없습니다.");
			e.printStackTrace();
		}
	}
	
	public ProductVO selectProduct(int pId) {
	    try (SqlSession ss = factory.openSession(true)) {
	        return ss.selectOne("selectProduct", pId);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return null;
	}
}