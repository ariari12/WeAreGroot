package kr.co.moran.web.action.product;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;

public class DeleteAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		String type = req.getParameter("type");
		String nextUrl = "";
		
		switch (type == null ? "" : type) {
			case "ctg": nextUrl = ctgDelete();
				break;
			default: nextUrl = null;
		}
		return nextUrl;
	}
	
	private String ctgDelete() {
		return "jsp/product/";
	}

}
