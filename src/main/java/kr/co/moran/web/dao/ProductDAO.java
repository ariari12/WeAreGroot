package kr.co.moran.web.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.eclipse.tags.shaded.org.apache.bcel.generic.NEW;

import kr.co.moran.web.vo.ProductImgVO;
import kr.co.moran.web.vo.ProductVO;
import lombok.Locked.Read;

public class ProductDAO {
	private SqlSession session;
	
	public ProductDAO() {
		openSession();
	}
	
	private void openSession() {
		try {
			if(session == null) {
				session = new SqlSessionFactoryBuilder()
					.build(Resources.getResourceAsReader("config/SqlMapConfig.xml"))
					.openSession();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public List<ProductVO> pdSelectAll() {
		openSession();
		List<ProductVO> vos = session.selectList("kr.co.moran.product.selectAll");
		closeSession();
		return vos;
	}
	
	public List<ProductVO> pdSelectPage(int start, int pageNum) {
		openSession();
		Map<String, Integer> map = new HashMap<>();
        map.put("start", start);
        map.put("pageNum", pageNum);
		List<ProductVO> vos = session.selectList("kr.co.moran.product.selectPage", map);
		closeSession();
		return vos;
	}
	
	public ProductVO pdSelsctOne(int no) {
		openSession();
		ProductVO v = session.selectOne("kr.co.moran.product.selectById", no);
		closeSession();
		return v;
	}
	
	public List<ProductImgVO> piSelsctByPdid(int no) {
		openSession();
		List<ProductImgVO> vos = session.selectList("kr.co.moran.product.selectAllImgById", no);
		closeSession();
		return vos;
	}
	
	public ProductImgVO piSelsctBigimgByPdid(int pd_id) {
		openSession();
		ProductImgVO v = session.selectOne("kr.co.moran.product.piSelsctBigimgByPdid", pd_id);
		closeSession();
		return v;
	}
	
	private void closeSession() {
		if(session != null ) {
			session.close();
			session = null;
		}
	}
	
	public static void main(String[] args) {
//		new ProductDAO().pdSelectAll().forEach(System.out::println);
//		new ProductDAO().pdSelectPage(10, 5).forEach(System.out::println);
//		System.out.println(new ProductDAO().pdSelsctOne(12938));
		
//		new ProductDAO().piSelsctByPdid(12938).forEach(System.out::println);
		System.out.println(new ProductDAO().piSelsctBigimgByPdid(12938));
	}
}
