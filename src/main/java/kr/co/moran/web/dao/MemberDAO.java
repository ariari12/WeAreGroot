package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
	public SqlSessionFactory factory;
	public MemberDAO() {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(r);
		} catch (IOException e) {
			System.out.println("config.xml 파일을 찾을 수 없습니다.");
			e.printStackTrace();
		}
	}
	
}
