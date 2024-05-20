<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@page import="kr.co.moran.web.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<link rel="stylesheet" href="./css/product.css">
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
<div class="div-wrapper">
    <div class="products">
    <%
    	ProductDAO dao = new ProductDAO();
    	List<ProductVO> vos = (List<ProductVO>)request.getAttribute("pdList");
   		int cnt = 0;
    	for(ProductVO v : vos) {
    		if(cnt == 0) { 
   		%>
        <div class="frame-line">
        	<% } %>
        	
            <div class="frame-prd">
                <img class="prd-img" src="<%=dao.piSelsctBigimgByPdid(v.getId()).getImg() %>" />
                <div class="prd-desc">
                    <div class="prd-name"><%=v.getName() %></div>
                    <div class="prd-price"><%=v.getPrice() %> 원</div>
                    <div class="prd-tag">
                        <div class="prd-hot">인기</div>
                        <div class="prd-new">신상품</div>
                    </div>
                </div>
            </div>
            
      	<% 	/*
      		cnt++;
      		if(cnt >= 2) { 
      		cnt = 0;
      		*/
      	%>
      	
      	 </div>
        <% } %>
        
    </div>
  		<% /*
  		cnt++;
  		} */
   	%>
    
    <div class="page">
    <%
    	int currentPage = Integer.parseInt(request.getAttribute("currentPage").toString());
    	for(int i = 1; i <= currentPage; i++) {
	    %>
        <div><%=i %></div>
        <% }
    %>
    </div>
    <jsp:include page="../layout/footer.jsp"></jsp:include>
</div>
</body>
</html>