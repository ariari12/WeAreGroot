package kr.co.moran.web.action.cart;

import java.util.HashMap;
import java.util.Map;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CartDAO;

public class CntChange implements Action {
	public String execute(HttpServletRequest req, HttpServletResponse resp) {

		String[] data = req.getParameter("updateData").split(",");
		CartDAO dao = new CartDAO();
		Map<String, Object> params = new HashMap<>();
		params.put("pId", data[0]);
		params.put("cnt", data[1]);
		// 받아온 멤버 아이디를넣어야함.
		// 나중에 수정이 필요함.
		params.put("mId", 9);		
		return String.valueOf(dao.chageCart(params));
	}
}
