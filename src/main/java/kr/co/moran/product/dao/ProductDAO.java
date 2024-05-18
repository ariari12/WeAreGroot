package kr.co.moran.product.dao;

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

import kr.co.moran.product.vo.ProductImgVO;
import kr.co.moran.product.vo.ProductVO;
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
	
//	public List<ProductImgVO> piSelsctByPdid(int no) {
//		List<ProductImgVO> vos = new ArrayList<ProductImgVO>();
//		try {
//			ps = con.prepareStatement(" select * from MORANMORAN.PRODUCT_IMG where pd_id = ? ");
//			ps.setInt(1, no);
//			rs = ps.executeQuery();
//			while (rs.next()) {
//				vos.add(new ProductImgVO(
//					rs.getInt(1),
//					rs.getInt(2),
//					rs.getString(3)
//				));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return vos;
//	}
//	
//	public List<ProductImgVO> piSelsctByPdid(int pd_id, int pi_id) {
//		List<ProductImgVO> vos = new ArrayList<ProductImgVO>();
//		try {
//			ps = con.prepareStatement(" select * from MORANMORAN.PRODUCT_IMG where pd_id = ? ");
//			ps.setInt(1, pd_id);
//			ps.setInt(2, pi_id);
//			rs = ps.executeQuery();
//			while (rs.next()) {
//				vos.add(new ProductImgVO(
//					rs.getInt(1),
//					rs.getInt(2),
//					rs.getString(3)
//				));
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return vos;
//	}
//
//	public List<Object[]> testSelect() {
//		List<Object[]> vos = new ArrayList<Object[]>();
//		try {
//			ps = con.prepareStatement(" select * from MORANMORAN.dept ");
//			rs = ps.executeQuery();
//			while (rs.next()) {
//				vos.add(new Object[] {
//					rs.getObject(1),
//					rs.getObject(2),
//					rs.getObject(3)
//				});
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return vos;
//	}
	
	private void closeSession() {
		if(session != null ) {
			session.close();
			session = null;
		}
	}
	
	public static void main(String[] args) {
		new ProductDAO().pdSelectAll().forEach(System.out::println);
//		new ProductDAO().pdSelectPage(10, 5).forEach(System.out::println);
//		System.out.println(new ProductDAO().pdSelsctOne(12938));
	}
}
