package kr.co.moran.web.action.dailyFlower;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;

public class CallbackAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		return "/jsp/dailyFlower/callback.jsp";
	}

}
