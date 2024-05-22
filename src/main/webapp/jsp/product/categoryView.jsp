<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@page import="kr.co.moran.web.vo.member.MemberVO"%>
<%@page import="kr.co.moran.web.vo.CategoryVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="category">
<%
	MemberVO member = (MemberVO)session.getAttribute("memberVO");
	// System.out.println("member? " + member);
	int admin = 0;
	
	if(member != null) {
		admin = Integer.parseInt(member.getAdmintype());
	}
	// System.out.println("admin? " + admin);

	ProductDAO dao = new ProductDAO();
	List<CategoryVO> cts = dao.selectAll();
	
	int cnt = 0;
	for(CategoryVO c : cts) {
   		if(cnt %5 == 0) { 
  		%>
	<div class="overlap-group">
		<% } %>
	<div class="category-group">
		<div class="cateagory-title">
			<a href="<%="?cmd=list&type=category&category="+ c.getCId() %>"><%=c.getName() %></a>
		</div>
		<%
			int a;
			// List<CategoryVO> subCts = dao.selectAllByCId(c.getCId());
		%>
		<div class="subcategories">하위 카테고리1</div>
		<div class="subcategories">하위 카테고리2</div>
		<div class="subcategories">하위 카테고리3</div>
		<div class="subcategories">하위 카테고리4</div>
	</div>
	
	<% 	cnt++;
		if (cnt %5 == 0) { %>
	</div>
	<% 	}
	}	
	if (cnt %5 != 0) { %>
	</div>
	<% } 
	if(admin >= 1) { %>
	<a class="btn btn-primary ctg-btn" href="?modify&type=category">카테고리 수정</a>
	<% } %>
</div>