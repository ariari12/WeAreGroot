package kr.co.moran.web.controller;

import java.io.IOException;
import java.util.Enumeration;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.co.moran.web.action.UploadAction;
import kr.co.moran.web.action.product.AddAction;
import kr.co.moran.web.action.product.ModifyAction;
import kr.co.moran.web.vo.member.MemberVO;

@SuppressWarnings("serial")
@WebServlet("/product-upload")
public class ProductUploadController extends HttpServlet {
	/*
	 * file upload use controller
	 * only post
	 */
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		String nextUrl = null;
		
		MemberVO member = (MemberVO)req.getSession().getAttribute("memberVO");
		if(member != null || member.getAdmintype() >= 1) {
			nextUrl = process(req, resp);
		}
		
		if(nextUrl == null) nextUrl = "jsp/product/wrong.jsp";

		// ajax 요청 반환 시 forard 안함
		if(nextUrl.equals("ajax")) return;
		
		System.out.println(nextUrl);
		req.getRequestDispatcher(nextUrl).forward(req, resp);
	}
	
	
	private String process(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String saveDir = req.getServletContext().getRealPath("/product_Img");
		System.out.println(saveDir);
		
		// 5MB
		final int maxFileSize = 5 *1024 *1024;

		// MultipartRequest 객체 생성
		MultipartRequest mlpReq = new MultipartRequest(
			req,
			saveDir,
			maxFileSize,
			"UTF-8",
			new DefaultFileRenamePolicy()
		);
		
		UploadAction action = null;
		String act = mlpReq.getParameter("cmd");
		String nextUrl = null;
		
		switch (act == null ? "" : act) {
			case "modify": action = new ModifyAction(); break;
			case "add": action = new AddAction(); break;
			default: action = null;
		}
		
		if(action != null) {
			nextUrl = action.fileExecute(mlpReq, req, resp);
		}
		return nextUrl;
	}
}
