package kr.co.moran.web.action.order;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;

public class OrderDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String pId = req.getParameter("pd_id");
		
		
		return "/jsp/order/orderTest.jsp";
	}

}
