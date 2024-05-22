package kr.co.moran.web.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.EventDAO;

public class EventDetailAction implements Action {
	public int uId;
	
	EventDetailAction(){
		
	}
	EventDetailAction(int uId){
		this.uId = uId;
	}
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		EventDAO edao = new EventDAO();
//		edao.selectOne(eId);
		return null;
	}

}
