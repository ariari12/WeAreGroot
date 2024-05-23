package kr.co.moran.web.action.event;

import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.EventDAO;
import kr.co.moran.web.vo.EventVO;

public class EventListAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
//		System.out.println("EventListAction execute실행");
		EventDAO edao = new EventDAO();
		List<EventVO> eventList = edao.selectEventList();
		if(eventList != null) {
			req.setAttribute("eList", eventList);
			
			return "jsp/event/eventList.jsp";
		}
		return "redirect:/moran/event";
	}
	
}
