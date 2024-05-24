package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.cartTest.CartVO;
import kr.co.moran.web.vo.cartTest.ProductCartVO;

public class cartTestDAO {
	public SqlSessionFactory factory;
	public cartTestDAO() {
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
	
	public int insertCart(CartVO cvo) {
	    try (SqlSession ss = factory.openSession(true)) {
	    	return ss.insert("insertCart", cvo);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		return 0;
	}

	public List<ProductCartVO> selectCartList(int mId) {
		List<ProductCartVO> vo = null;
	    try (SqlSession ss = factory.openSession(true)) {
	    	vo = ss.selectList("selectCart", mId);	
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return vo;
	}
	
}