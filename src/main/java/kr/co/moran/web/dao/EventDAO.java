package kr.co.moran.web.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.co.moran.web.vo.EventVO;

public class EventDAO {
	SqlSessionFactory factory;
	SqlSession ss;
	public EventDAO() {
		try {
			Reader r = Resources.getResourceAsReader("config/SqlMapConfig.xml");
			SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
			factory = builder.build(r);
			r.close();
			ss = factory.openSession(true);
		} catch (IOException e) {
			System.out.println("config.xml 파일 찾기 실패");
			e.printStackTrace();
		}
	}
	
	//이벤트페이지 목록조회
	public List<EventVO> selectEventList(){
		List<EventVO> eventList = ss.selectList("selectEventList");
		ss.close();
		return eventList;
	}
	
	//이벤트상세페이지
	public EventVO selectEventByEid(int eId) {
		EventVO	evo = ss.selectOne("selectEventByEid", eId);
		evo.setEventImgVO(ss.selectOne("selectEventImg",eId));
		
		System.out.println("EventDAO selectEventByEid 실행\n evo : " + evo.toString());
		ss.close();
		return evo;
	}

	public void insertEvent(EventVO evo, int pdId) {
		
//		ss.insert("kr.co.moran.web.event.insertEvent",@Param("pdId"));
		
	}
	
	
}
