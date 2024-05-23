package kr.co.moran.web.action.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class JoinAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html;charset=UTF-8");
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String pw = req.getParameter("pw");
			String rePw = req.getParameter("repw");
			String nickName = req.getParameter("nickname");
			String phone = req.getParameter("phone");
			String birth = req.getParameter("birth"); 
			String gender = req.getParameter("gender");
			String verifyEmailCode = req.getParameter("verifyEmailCode");
			Object emailCode = req.getSession().getAttribute("emailCode");
			
			if(!emailCode.toString().equals(verifyEmailCode)) {
				//이메일 인증번호가 맞지 않다면 회원가입 폼으로
				req.setAttribute("error", "인증번호가 일치하지 않습니다.");
				return "jsp/member/joinForm.jsp";
			}
			
			if(!pw.equals(rePw) ) {
				//비밀번호가 맞지 않다면 회원가입 폼으로
				return "jsp/member/joinForm.jsp";
			}
			MemberVO vo = new MemberVO();
			MemberDAO dao = new MemberDAO();
			vo.setName(name);
			vo.setEmail(email);
			vo.setPw(pw);
			vo.setNick(nickName);
			vo.setPhone(phone);
			vo.setBirth(birth);
			vo.setGender(birth);
			dao.insertMember(vo);
			
			
		} catch (UnsupportedEncodingException e) {			
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//성공시 (로그인 전) 메인 화면으로
		return "index.jsp";
	}

}
