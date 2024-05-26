package kr.co.moran.web.action.member;

import java.io.UnsupportedEncodingException;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.MemberDAO;
import kr.co.moran.web.vo.member.AddressVO;
import kr.co.moran.web.vo.member.MemberVO;

public class modifyMemberAction implements Action {

	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		try {
			req.setCharacterEncoding("UTF-8");
			resp.setContentType("text/html;charset=UTF-8");
			String mId = req.getParameter("mId");
			String name = req.getParameter("name");
			String nick = req.getParameter("nick");
			String email = req.getParameter("email");
			String zipcode = req.getParameter("zipcode");
			String addr1 = req.getParameter("addr1");
			String addr2 = req.getParameter("addr2");
			String phone = req.getParameter("phone");
			String birth = req.getParameter("birth"); 
			String gender = req.getParameter("gender");
			MemberDAO dao = new MemberDAO();
			MemberVO vo = new MemberVO();
			AddressVO avo = new AddressVO();
			
			// 주소 세팅
			avo.setAddr1(addr1);
			avo.setAddr2(addr2);
			avo.setZipcode(zipcode);
			
			// 회원 세팅
			vo.setMId(Integer.parseInt(mId));
			vo.setName(name);
			vo.setNick(nick);
			vo.setEmail(email);								
			vo.setPhone(phone);
			vo.setBirth(birth);
			vo.setGender(gender);
			vo.setAddressVO(avo);
			
			System.out.println("[modifyMemberAction] MemeberVO = "+vo);
			System.out.println("[modifyMemberAction] AddressVO = "+avo);
			
			dao.modifyMemberWithAddressById(vo);

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "jsp/member/myPageForm.jsp";
	}

}
