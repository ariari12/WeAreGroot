package kr.co.moran.web.action.knowhow;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;

public class KHWriteFormAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("khWriteForm.jsp");
		return "views/khWriteForm.jsp";
	}

}
