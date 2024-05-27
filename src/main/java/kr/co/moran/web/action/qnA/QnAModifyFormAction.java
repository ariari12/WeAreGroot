package kr.co.moran.web.action.qnA;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;

public class QnAModifyFormAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		return "views/qnaModifyForm.jsp";
	}

}
