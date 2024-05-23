<%@page import="kr.co.moran.web.dao.cartTestDAO"%>
<%@page import="kr.co.moran.web.vo.cartTest.CartVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 멤버ID, 상품ID, 상품수량
	String m = request.getParameter("mId");
	String p = request.getParameter("pId");
	String c = request.getParameter("cnt");
	
	// 값이 없거나 null 이라면 리턴
	if (m == null || m == "") { return; }
	if (p == null || p == "") { return; }
	if (c == null || c == "") { return; }
	
	// STR TO INT
	int mId = Integer.parseInt(m);
	int pId = Integer.parseInt(p);
	int cnt = Integer.parseInt(c);
	
	cartTestDAO dao = new cartTestDAO();
	CartVO cvo = new CartVO();
	cvo.setMId(mId);
	cvo.setPId(pId);
	cvo.setCnt(cnt);
	
	int result = dao.insertCart(cvo);
	out.println(result);
%>