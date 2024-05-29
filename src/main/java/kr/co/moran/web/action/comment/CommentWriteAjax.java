package kr.co.moran.web.action.comment;

import java.io.IOException;

import org.apache.catalina.connector.Response;
import org.json.simple.JSONObject;

import com.mysql.cj.xdevapi.JsonArray;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.moran.web.action.Action;
import kr.co.moran.web.dao.CommentDAO;
import kr.co.moran.web.vo.CommentVO;
import kr.co.moran.web.vo.member.MemberVO;

public class CommentWriteAjax implements Action {

	@SuppressWarnings("unchecked")
	@Override
	public String execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session= req.getSession();
		CommentDAO cdao = new CommentDAO();
		CommentVO cvo = new CommentVO();
		MemberVO mvo =(MemberVO)session.getAttribute("memberVO");
//		System.out.println(mvo.toString());
		
		JSONObject json = new JSONObject();
		
		if(req.getParameter("bId") != null) {
			int bId = Integer.parseInt(req.getParameter("bId"));
			cvo.setBId(bId);
		}
		if(req.getParameter("eId") != null) {
			
			int eId = Integer.parseInt(req.getParameter("eId"));
			cvo.setEId(eId);
		}
		if(req.getParameter("cParentId") != null) {
			int cParentId = Integer.parseInt(req.getParameter("cId"));
			cvo.setCParentId(cParentId);
		}
		try {
			cvo.setMId(mvo.getMId());
		} catch (Exception e) {
			json.put("msg", "로그인 후 이용해주세요");
		}
		cvo.setContents(req.getParameter("contents"));
		
		
		System.out.println("action cvo : " + cvo.toString());
		int res = cdao.InsertCommentByAny(cvo);
		
		if(res == 1) {
			json.put("msg", "성공");
		}else {
			json.put("msg", "실패");
		}
		resp.setContentType("application/json");
		try {
			resp.getWriter().write(json.toJSONString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return json.toJSONString();
	}
	
	
	

}
