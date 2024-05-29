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
		admin = member.getAdmintype();
	}
	// System.out.println("admin? " + admin);

	ProductDAO dao = new ProductDAO();
	List<CategoryVO> cts = dao.ctSelectByParentIdIsNull();
	
	int cnt = 0;
	for(CategoryVO c : cts) {
   		if(cnt %5 == 0) { 
  		%>
	<div class="overlap-group">
		<% } %>
	<div class="category-group">
		<div class="cateagory-title">
			<a href="<%="?cmd=list&type=ctg&ctg="+ c.getCId() %>"><%=c.getName() %></a>
		</div>
		<%
			int a;
			List<CategoryVO> subCts = dao.ctSelectByParentId(c.getCId());
			if(subCts.size() > 0) {
				for(CategoryVO vo : subCts) {
					%><div class="subcategories">
						<a style="color: #202020" href="<%="?cmd=list&type=ctg&ctg="+ vo.getCId() %>"><%=vo.getName() %></a>
					</div>
					<%
				}
			}
		%>
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
	<div class="ctg-btns">
		<a class="btn btn-primary ctg-btn" href="?cmd=add&type=ctg&ctg=view">카테고리 등록</a>
		<a class="btn btn-primary ctg-btn" href="?cmd=modify&type=ctg&ctg=view">카테고리 수정</a>
		<a class="btn btn-danger ctg-btn" href="?cmd=delete&type=ctg&ctg=view">카테고리 삭제</a>
	</div>
	<% } %>
</div>