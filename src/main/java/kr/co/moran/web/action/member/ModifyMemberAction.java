package kr.co.moran.web.action.member;

import java.io.UnsupportedEncodingException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.AddressVO;
import kr.co.moran.web.vo.member.MemberVO;

public class ModifyMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html;charset=UTF-8");
			HttpSession session=req.getSession();
			MemberDAO dao = new MemberDAO();
			AddressVO avo = new AddressVO();
			MemberVO vo =  (MemberVO) session.getAttribute("memberVO");
			int mId = vo.getMId();
			String name = req.getParameter("name");
			String nick = req.getParameter("nick");
			String email = req.getParameter("email");
			String zipcode = req.getParameter("zipcode");
			String addr1 = req.getParameter("addr1");
			String addr2 = req.getParameter("addr2");
			String phone = req.getParameter("phone");
			String birth = req.getParameter("birth"); 
			String gender = req.getParameter("gender");
			
			System.out.println("addr1 = "+addr1);
			System.out.println("addr2 = "+addr2);
			System.out.println("zipcode = "+zipcode);
			
			
			// 주소 세팅
			avo.setAddr1(addr1);
			avo.setAddr2(addr2);
			avo.setZipcode(zipcode);
			
			System.out.println("[ModifyMemberAction] avo = "+avo);
			
			// 회원 세팅
			vo.setMId(mId);
			vo.setName(name);
			vo.setNick(nick);
			vo.setEmail(email);								
			vo.setPhone(phone);
			vo.setBirth(birth);
			vo.setGender(gender);
			vo.setAddressVO(avo);
			
			System.out.println("[modifyMemberAction] MemeberVO = "+vo);
			System.out.println("[modifyMemberAction] AddressVO = "+avo);
			
			
			
			if(dao.modifyMemberWithAddressById(vo)) {
				session.setAttribute("memberVO", vo);
				System.out.println("세션 저장 성공"+session.getAttribute("memberVO"));				
			}
			
			
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "jsp/member/myPageForm.jsp";
	}

}
