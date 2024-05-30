package kr.co.moran.web.action.order;

import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.ProductTestDAO;
import kr.co.moran.web.vo.member.MemberVO;
import kr.co.moran.web.vo.productTest.ProductVO;


public class OrderDetailAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		HttpSession session = req.getSession();
	    MemberVO mvo = (MemberVO) session.getAttribute("memberVO");

	    
		String[] pdIdStr = req.getParameterValues("pd_id");
		String[] cntStr = req.getParameterValues("cnt");
		
		List<ProductVO> list = new ArrayList<ProductVO>();
		ProductTestDAO dao = new ProductTestDAO();
		
		for (int i = 0; i < pdIdStr.length; i++) {
			ProductVO vo = null;
			int cnt = Integer.parseInt(cntStr[i]);
			vo = dao.selectProduct(Integer.parseInt(pdIdStr[i]));
			
			if (cnt <= 0) {
				vo.setCnt(1);
			} else if (cnt > vo.getPQuantity()) {
				vo.setCnt(vo.getPQuantity());
			} else {
				vo.setCnt(Integer.parseInt(cntStr[i]));
			}
			list.add(vo);
		}
		list.forEach(s -> System.out.println(s));
		req.setAttribute("productList", list);
		req.setAttribute("memverVO", mvo);		
		
		return "/jsp/order/orderForm.jsp";
	}

}
