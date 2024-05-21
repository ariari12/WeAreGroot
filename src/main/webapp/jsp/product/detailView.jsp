<%@page import="kr.co.moran.web.vo.ProductImgVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.moran.web.vo.ProductVO"%>
<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% 
	Object prdId = request.getParameter("no"); 
	ProductVO v = new ProductDAO().pdSelsctOne( Integer.parseInt(prdId.toString()) );
%>
<title><%=v.getName() %></title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<script src="resources/js/product.js"></script>
<link rel="stylesheet" href="resources/css/product.css">

</head>
<body>
<%=v.getPId() %>
<%=v.getName() %>
<div class="contents"></div>
<script>
	$(() => {
		$(".contents").html(descConvert(<%=v.getDescription().replace("None", "") %>));
	});
</script>

<%
	List<ProductImgVO> imgs = (List<ProductImgVO>)request.getAttribute("imgs");
	for(ProductImgVO img : imgs) { %>
	<img alt="<%=v.getName() + "1번 이미지" %>" src="<%=img.getImg() %>">
	<% }
%>
</body>
</html>