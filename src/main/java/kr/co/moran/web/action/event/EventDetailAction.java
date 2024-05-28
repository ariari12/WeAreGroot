package kr.co.moran.web.action.event;

import java.util.List;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.dao.EventDAO;
import kr.co.moran.web.vo.EventVO;

public class EventDetailAction implements Action {
	public int eId;
	
	EventDetailAction(){
		
	}
	public EventDetailAction(int eId){
		this.eId = eId;
	}
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		EventDAO edao = new EventDAO();
		EventVO evo = new EventVO();
		CommentDAO cdao = new CommentDAO();
		evo = edao.selectEventByEid(eId);
		List<Map<String, Object>> list = cdao.selectCommentByEid(eId);
		
		if(evo != null) {
			req.setAttribute("evo", evo);
			req.setAttribute("cList", list);
			
			return "jsp/event/eventDetail.jsp";
		}
		
		return "redirect:moran/event";
	}

}
