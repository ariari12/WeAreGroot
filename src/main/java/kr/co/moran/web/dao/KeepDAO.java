package kr.co.moran.web.dao;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class KeepDAO {
	
	private SqlSession session;
	
	public KeepDAO() {
		openSession();
	}
	
	private void openSession() {
		try {
			if (session == null) {
			session = new SqlSessionFactoryBuilder()
					.build(Resources.getResourceAsReader("config/SqlMapConfig.xml"))
					.openSession();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	
	
	
	
	

	public void closeSession() {
		if(session != null) {
			session.close();
			session = null;
		}
	}
	
	
	
	// Test
	public static void main(String[] args) {
		KeepDAO dao = new KeepDAO();
		
		
		
		
		dao.closeSession();
	}
}
