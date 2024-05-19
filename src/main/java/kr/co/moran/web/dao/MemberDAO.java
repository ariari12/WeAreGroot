package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.member.MemberVO;



public class MemberDAO {
	public SqlSessionFactory factory;
	public MemberDAO() {
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
	public void insertMember(MemberVO vo) {
	    try (SqlSession ss = factory.openSession(true)) {
	        ss.insert("insertMember", vo);
	    } catch (Exception e) {
	        System.out.println("회원 정보 삽입 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	    }
	}
	
}