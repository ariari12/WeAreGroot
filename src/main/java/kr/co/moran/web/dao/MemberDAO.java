package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

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
	
	// 회원가입 페이지에서 입력한 정보를 저장
	public void insertMember(MemberVO vo) {
	    try (SqlSession ss = factory.openSession(true)) {
	    	System.out.println("[MemberDAO] MemberVO = "+vo);
	    	ss.insert("kr.co.moran.web.member.insertMember", vo);
	    	ss.insert("kr.co.moran.web.member.insertAddress",vo);
	        
	        // 자원을 닫을 필요가 없음 try~with~resource
	        // ss.close
	    } catch (Exception e) {
	        System.out.println("회원 정보 삽입 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	    }
	}
	
	// 이메일과 패스워드에 해당하는 회원정보 검색 (로그인)
	public MemberVO selectMemberByEmailAndPassword(String email, String pw) {
		try (SqlSession ss = factory.openSession(true)) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("email", email);
			map.put("pw", pw);
			System.out.println("[MemberDAO] email : "+map.get("email"));
			System.out.println("[MemberDAO] pw : "+map.get("pw"));
			
			return ss.selectOne("kr.co.moran.web.member.selectMemberByEmailAndPassword", map);
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 검색 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	        return null;
	    }
	}
	
	//이메일을 통한 회원 검색 (이메일 인증)
	public MemberVO selectMemberByEmail(String email) {
		try (SqlSession ss = factory.openSession(true)) {
			
			System.out.println("[MemberDAO] email : "+email);			
			
			return ss.selectOne("kr.co.moran.web.member.selectMemberByEmail", email);
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 검색 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	        return null;
	    }
	}
	
	public MemberVO selectMemberByEmailAndName(String email, String name) {
		try (SqlSession ss = factory.openSession(true)) {
			
			System.out.println("[MemberDAO] email : "+email);
			System.out.println("[MemberDAO] name : "+name);
			Map<String, String> map = new HashMap<String, String>();
			map.put("email", email);
			map.put("name", name);
			
			return ss.selectOne("kr.co.moran.web.member.selectMemberByEmailAndName", map);
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 검색 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	        return null;
	    }
	}
	
	public MemberVO selectMemberWithAddressById(int id) {
		try(SqlSession ss = factory.openSession(true)){
			System.out.println("[MemberDAO] id : "+id);
			MemberVO vo = ss.selectOne("kr.co.moran.web.member.selectMemberWithAddressById",id);
			System.out.println(vo);
			return vo;
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 검색 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	        return null;
	    }
		
	}
	public MemberVO selectMemberById(int id) {
		try(SqlSession ss = factory.openSession(true)){
			System.out.println("[MemberDAO] id : "+id);
			return ss.selectOne("kr.co.moran.web.member.selectMemberById",id);
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 검색 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	        return null;
	    }		
		
	}
	public boolean modifyMemberWithAddressById(MemberVO vo) {
		try (SqlSession ss = factory.openSession(true)) {
			System.out.println("[MemberDAO] "+vo);
			ss.update("kr.co.moran.web.member.modifyMemberWithAddressById",vo);
			return true;
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 수정 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	        return false;
	    }
		
	}
	
	public void deleteMemberbyId(MemberVO vo) {
		try (SqlSession ss = factory.openSession(true)) {
			System.out.println("[MemberDAO] = "+vo);
			ss.update("kr.co.moran.web.member.insertMemberExit",vo);
			ss.update("kr.co.moran.web.member.updateMemberStatus",vo);
		}catch (Exception e) {
	        // 예외 처리
			System.out.println("회원 정보 삭제 중 오류가 발생했습니다.");
	        System.out.println("오류 메시지: " + e.getMessage());
	        System.out.println("예외 클래스: " + e.getClass().getSimpleName());
	        e.printStackTrace();
	    }
	}
}