package moran_data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public ProductDAO() {
        try {
        	String jdbc = "com.mysql.cj.jdbc.Driver";
            // String url = "jdbc:mysql://서버IP:Port/dbname";
    		String url = "jdbc:mysql://mydb.cxqs0u844kgr.ap-northeast-2.rds.amazonaws.com:3306/xe";
        	// String url = "jdbc:mysql://mydb.cxqs0u844kgr.ap-northeast-2.rds.amazonaws.com:3306/xe";
            String username = "scott";
            String password = "tigerlion2401$";

            Class.forName(jdbc);
            con = DriverManager.getConnection(url, username, password);

            // 자동 커밋 허용
            con.setAutoCommit(true);

            System.out.println("DB 연결 ok");
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public List<ProductVO> pdSelectAll() {
		List<ProductVO> vos = new ArrayList<ProductVO>();
		try {
			ps = con.prepareStatement(" select * from xe.PRODUCT ");
			rs = ps.executeQuery();
			while (rs.next()) {
				vos.add(new ProductVO(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3),
					rs.getInt(4),
					rs.getString(5),
					rs.getInt(6),
					rs.getInt(7),
					rs.getInt(8),
					rs.getInt(9),
					rs.getDate(10)
				));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vos;
	}
	
	public List<ProductVO> pdSelectFive() {
		List<ProductVO> vos = new ArrayList<ProductVO>();
		try {
			ps = con.prepareStatement(" select * from xe.PRODUCT LIMIT 5 ");
			rs = ps.executeQuery();
			while (rs.next()) {
				vos.add(new ProductVO(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3),
					rs.getInt(4),
					rs.getString(5),
					rs.getInt(6),
					rs.getInt(7),
					rs.getInt(8),
					rs.getInt(9),
					rs.getDate(10)
				));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vos;
	}
	
	public ProductVO pdSelsctOne(int no) {
		ProductVO v = null;
		try {
			ps = con.prepareStatement(" select * from xe.PRODUCT where pd_id = ? ");
			ps.setInt(1, no);
			rs = ps.executeQuery();
			if (rs.next()) {
				v = new ProductVO(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3),
					rs.getInt(4),
					rs.getString(5),
					rs.getInt(6),
					rs.getInt(7),
					rs.getInt(8),
					rs.getInt(9),
					rs.getDate(10)
				);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return v;
	}
	
	public List<ProductImgVO> piSelsctByPdid(int no) {
		List<ProductImgVO> vos = new ArrayList<ProductImgVO>();
		try {
			ps = con.prepareStatement(" select * from xe.PRODUCT_IMG where pd_id = ? ");
			ps.setInt(1, no);
			rs = ps.executeQuery();
			while (rs.next()) {
				vos.add(new ProductImgVO(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3)
				));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vos;
	}
	
	public List<ProductImgVO> piSelsctByPdid(int pd_id, int pi_id) {
		List<ProductImgVO> vos = new ArrayList<ProductImgVO>();
		try {
			ps = con.prepareStatement(" select * from xe.PRODUCT_IMG where pd_id = ? ");
			ps.setInt(1, pd_id);
			ps.setInt(2, pi_id);
			rs = ps.executeQuery();
			while (rs.next()) {
				vos.add(new ProductImgVO(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3)
				));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vos;
	}

	public List<Object[]> testSelect() {
		List<Object[]> vos = new ArrayList<Object[]>();
		try {
			ps = con.prepareStatement(" select * from xe.dept ");
			rs = ps.executeQuery();
			while (rs.next()) {
				vos.add(new Object[] {
					rs.getObject(1),
					rs.getObject(2),
					rs.getObject(3)
				});
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vos;
	}
	
	private void close() {
		try {
			rs.close();
			ps.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
//		System.out.println(new ProductDAO().pdSelectAll());
//		System.out.println(new ProductDAO().testSelect().toString());
	}
}
