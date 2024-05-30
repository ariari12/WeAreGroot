package kr.co.moran.web.action.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.MemberVO;

public class FindPwMemberAction implements Action{
	// 보내는 사람 이메일
	private static final String USERNAME = "rladkgus75@naver.com";
	// 보내는 사람 비번
	private static final String PASSWORD = "KFTCVE7DN267";
	private static final String HOST = "smtp.naver.com";
	private static final String PORT = "587";
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		System.out.println("[FindPwMemberAction] name = "+name);
		System.out.println("[FindPwMemberAction] email = "+email);
		MemberDAO dao = new MemberDAO();
		MemberVO vo =dao.selectMemberByEmailAndName(email, name);
		System.out.println("[FindPwMemberAction] "+vo);
		
		
		if (vo == null) {
	        // DB에 회원 정보가 없을 경우
	        return "emptyMember";
	    } else {
	    	String receiver=vo.getEmail();
	    	Properties p = new Properties();
			
			//네이버 설정
			p.put("mail.smtp.enable", "true");
			p.put("mail.smtp.host",HOST);
			p.put("mail.smtp.auth","true");
			p.put("mail.smtp.port", PORT);
			
			// 보낼 메세지
			StringBuffer sb = new StringBuffer();		
			sb.append("<h3> 안녕하세요 </h3>");
			sb.append("<h3> 모란모란 계정 비밀번호 입니다. </h3>");			
			sb.append("<h3> 비밀번호는 "+vo.getPw()+" 입니다 </h3>");
					
			
			Session sessions = Session.getInstance(p, new Authenticator(){
				protected PasswordAuthentication getPasswordAuthentication(){
					return new PasswordAuthentication(USERNAME, PASSWORD);
				}
			});
			
			System.out.println("sessions : "+sessions);
			
			String title = "모란모란 비밀번호 찾기";
			
			Message message = new MimeMessage(sessions);
			try {
				//보내는 사람
				message.setFrom(new InternetAddress(USERNAME, "모란모란", "utf-8"));
				
				//받는사람
				message.setRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
				
				//제목
				message.setSubject(title);
				
				//내용
				message.setContent(sb.toString(), "text/html;charset=utf-8");
				
				//발송
				Transport.send(message);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return "jsp/member/loginForm.jsp";

	    }
	 }
}
