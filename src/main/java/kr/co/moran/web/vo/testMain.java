package kr.co.moran.web.vo;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class testMain {

	public static void main(String[] args) {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");

			SqlSessionFactoryBuilder b = new SqlSessionFactoryBuilder();

			SqlSessionFactory f = b.build(r);

			r.close();

			SqlSession ss = f.openSession(true);
			System.out.println("ss : " + ss);

			DeptVO vo = ss.selectOne("getDept");

			System.out.println(vo.getDname());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
