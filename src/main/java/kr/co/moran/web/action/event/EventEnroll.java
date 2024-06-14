package kr.co.moran.web.action.event;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.EventDAO;
import kr.co.moran.web.vo.EventVO;
import kr.co.moran.web.vo.member.MemberVO;

public class EventEnroll implements Action{

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			HttpSession session = req.getSession();
			EventVO evo = new EventVO();
			String title = req.getParameter("title");
			String contetns = req.getParameter("contents");
			String start_ = req.getParameter("start");
			String end_ = req.getParameter("end");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date start = sdf.parse(start_);
			Date end = sdf.parse(end_);
			int pdId = Integer.parseInt(req.getParameter("pdId"));
			
			evo.setTitle(title);
			evo.setContents(contetns);
			evo.setStart(new java.sql.Date(start.getTime()));
			evo.setEnd(new java.sql.Date(end.getTime()));
			evo.setMemberVO((MemberVO)session.getAttribute("memberVO"));
			EventDAO edao = new EventDAO();
			
			edao.insertEvent(evo, pdId);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return null;
	}
	
}
