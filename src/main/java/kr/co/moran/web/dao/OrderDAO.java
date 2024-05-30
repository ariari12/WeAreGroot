package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.order.OrderVO;



public class OrderDAO {
	public SqlSessionFactory factory;
	public OrderDAO() {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(r);
			r.close();
		} catch (IOException e) {
			System.out.println("config.xml 파일을 찾을 수 없습니다.");
			e.printStackTrace();
		}
	}
	
	// 주문 데이터 조회
	public List<OrderVO> selectOrderAllByMid(int mId) {
		List<OrderVO> list = null;
	    try (SqlSession ss = factory.openSession(true)) {
	    	list = ss.selectList("selectOrderAllByMid", mId);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}
	
	// 주문 데이터 취소 조회
	public List<OrderVO> selectOrderCancleAllByMid(int mId) {
		List<OrderVO> list = null;
	    try (SqlSession ss = factory.openSession(true)) {
	    	list = ss.selectList("selectOrderCancleAllByMid", mId);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return list;
	}
	
	public int insertOrder(OrderVO vo) {
		
	    try (SqlSession ss = factory.openSession(true)) {
	    	return ss.insert("insertOrder", vo);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return 0;
	}
	
	
}