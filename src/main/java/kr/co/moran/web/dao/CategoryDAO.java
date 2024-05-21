package kr.co.moran.web.dao;

import java.io.IOException;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.CategoryVO;

public class CategoryDAO {
	private SqlSession session;
	
	public CategoryDAO() {
		openSession();
	}
	
	private void openSession() {
		if(session == null) {
			try {
				session = new SqlSessionFactoryBuilder()
					.build(Resources.getResourceAsReader("config/SqlMapConfig.xml"))
					.openSession();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void closeSession() {
		if(session != null) {
			session.close();
			session = null;
		}
	}

	public List<CategoryVO> selectAll() {
		openSession();
		List<CategoryVO> vos = session.selectList("kr.co.moran.category.selectAll");
		return vos;
	}

	public List<CategoryVO> selectSubCategory(int cParentId) {
		openSession();
		List<CategoryVO> vos = session.selectList("kr.co.moran.category.selectAllByCId", cParentId);
		return vos;
	}
	
	
	// Test
	public static void main(String[] args) {
		CategoryDAO dao = new CategoryDAO();
		
//		dao.selectAll().forEach(System.out::println);
		dao.selectSubCategory(0).forEach(System.out::println);
		
		dao.closeSession();
	}
}