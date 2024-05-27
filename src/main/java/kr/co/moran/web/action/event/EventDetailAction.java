package kr.co.moran.web.action.event;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
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
		evo = edao.selectEventByEid(eId);
		if(evo != null) {
			evo.getmId();
			evo.getPdId();
			
			
			req.setAttribute("evo", evo);
			return "jsp/event/eventDetail.jsp";
		}
		
		return "redirect:moran/event";
	}

}
