package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.cart.ProductCartVO;

public class CartDAO {
	public SqlSessionFactory factory;
	public CartDAO() {
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
	
	// 장바구니 데이터 추가
	public int insertCart(Map<String, Object> params) {
		int result = 0;
	    try (SqlSession ss = factory.openSession(true)) { 	
	    	result = ss.update("updateCart", params);	    	
	    	if (result == 0) {
	    		result = ss.insert("insertCart", params);
	    	}
	    	return result;
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		return result;
	}
	
	// 장바구니 데이터 삭제
	public int deleteCart(Map<String, Object> params) {
	    try (SqlSession ss = factory.openSession(true)) {
	    	return ss.delete("deleteCart", params);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		return 0;
	}
	
	// 장바구니 데이터 조회
	public List<ProductCartVO> selectCartList(int mId) {
		List<ProductCartVO> vo = null;
	    try (SqlSession ss = factory.openSession(true)) {
	    	vo = ss.selectList("selectCart", mId);	
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return vo;
	}
	
	// 장바구니 데이터 변경
	public int chageCart(Map<String, Object> params) {
		try (SqlSession ss = factory.openSession(true)) {
			return ss.update("changeCart", params);
		} catch (Exception e) {
			e.printStackTrace();
		}
	return 0;
	}
}