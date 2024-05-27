package kr.co.moran.web.action.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;


public class EmailCodeAction implements Action{
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html;charset=UTF-8");

			String verifyEmailCode = req.getParameter("emailCode");
			Object sessionEmailCode = req.getSession().getAttribute("emailCode");
			System.out.println("emailCode = "+sessionEmailCode.toString());
			System.out.println("verifyEmailCode = "+verifyEmailCode);
			if(!sessionEmailCode.toString().equals(verifyEmailCode)) {
				//이메일 인증실패				
				return "verifyEmailMismatch";
			}
						
		} catch (UnsupportedEncodingException e) {			
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "verifyEmailMatch";
	}
}
