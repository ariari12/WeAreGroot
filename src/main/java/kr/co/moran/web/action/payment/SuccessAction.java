package kr.co.moran.web.action.payment;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.Base64.Encoder;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CartDAO;
import kr.co.moran.web.dao.OrderDAO;
import kr.co.moran.web.vo.member.MemberVO;
import kr.co.moran.web.vo.order.OrderVO;

public class SuccessAction implements Action {
	
	private static final String SECRET_KEY = "test_sk_6BYq7GWPVv5mjyAXNDw73NE5vbo1:";
	
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String orderId = req.getParameter("orderId"); 
			String paymentKey = req.getParameter("paymentKey"); 
			String amount = req.getParameter("amount"); 
			Encoder encoder = Base64.getEncoder(); 
			byte[] encodedBytes = encoder.encode(SECRET_KEY.getBytes("UTF-8")); 
			String authorizations = "Basic "+ new String(encodedBytes, 0, encodedBytes.length); 
			URL url = new URL("https://api.tosspayments.com/v1/payments/confirm"); 
			HttpURLConnection connection = (HttpURLConnection) url.openConnection(); 
			connection.setRequestProperty("Authorization", authorizations);
			connection.setRequestProperty("Content-Type", "application/json"); 
			connection.setRequestMethod("POST"); 
			connection.setDoOutput(true); 
			JSONObject obj = new JSONObject(); 
			obj.put("paymentKey", paymentKey); 
			obj.put("orderId", orderId); 
			obj.put("amount", amount); 
			OutputStream outputStream = connection.getOutputStream(); 
			outputStream.write(obj.toString().getBytes("UTF-8")); 
			int code = connection.getResponseCode(); 
			boolean isSuccess = code == 200 ? true : false; 
			InputStream responseStream = isSuccess? connection.getInputStream(): connection.getErrorStream(); 
			Reader reader = new InputStreamReader(responseStream, StandardCharsets.UTF_8); 
			JSONParser parser = new JSONParser(); 
			JSONObject jsonObject = (JSONObject) parser.parse(reader);
			req.setAttribute("jsonObject", jsonObject);
			responseStream.close();
			
		    HttpSession session = req.getSession();
		    MemberVO mvo = (MemberVO) session.getAttribute("memberVO");
			OrderDAO odao = new OrderDAO();
			
			String[] pdId = req.getParameterValues("pd_id");
			String[] cnt = req.getParameterValues("cnt");
			
			String orderCode = req.getParameter("ordercode");
			
			String receiverName = req.getParameter("receiverName"); 
			String receiverPhone = req.getParameter("receiverPhone"); 
			String zipCode = req.getParameter("zipCode"); 
			String address = req.getParameter("address"); 
			String addressDetail = req.getParameter("addressDetail"); 
			String deliveryMemo = req.getParameter("deliveryMemo"); 
			OrderVO vo = null;
			String[] pIds = new String[pdId.length];
			Map<String, Object> params = new HashMap<>();			
			for (int i = 0; i < pdId.length; i++) {
				try {
					vo = new OrderVO();
					vo.setPdId(Integer.parseInt(pdId[i]));
					vo.setCnt(Integer.parseInt(cnt[i]));
					vo.setName(receiverName);
					vo.setPhone(receiverPhone);
					vo.setZipcode(Integer.parseInt(zipCode));
					vo.setAddress(address);
					vo.setAddressDetail(addressDetail);
					vo.setMemo(deliveryMemo);
					vo.setUuid(orderId);
					vo.setTotal(Integer.parseInt(amount));
					vo.setMId(mvo.getMId());
					int result = odao.insertOrder(vo);
					
					// 결제 실패
					if(result == 0) {
						return "/jsp/payment/fail.jsp";
					}
					System.out.println("[vo] " + result + " : " + vo);
					pIds[i] = pdId[i];
				} catch (Exception e) {
					// 결제 실패
					return "/jsp/payment/fail.jsp";
				}
			}
			// 장바구니 상품삭제
			if (orderCode.equals("1")) {
				params.put("productIds", pIds);
				params.put("mId", mvo.getMId());
				new CartDAO().deleteCart(params);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/jsp/payment/success.jsp";
	}

}
