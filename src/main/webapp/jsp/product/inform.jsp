<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알림</title>

<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="resources/js/product.js"></script>

<link rel="stylesheet" href="resources/css/category.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">

</head>
<body>

<% 	
	String message = (String)request.getAttribute("message");
	String redUrl = (String)request.getAttribute("redUrl");
	if(message != null && redUrl != null) {
		System.out.println("message:" + message);
		System.out.println("redirectUrl:" + redUrl);
		%><script>msgRedirect('<%=message %>', '<%=redUrl %>')</script><%
	}
	else if(message != null) {
		System.out.println("message:" + message);
		%><script>viweMsg('<%=message %>')</script><%
	}
	else if(redUrl != null) {
		System.out.println("redirectUrl:" + redUrl);
		%><script>redirect('<%=redUrl %>')</script><%
	}
	if(redUrl == null)  {
		System.out.println("redirectUrl:" + redUrl);
		redUrl = request.getContextPath() + "/index.jsp";
		%><script>redirect('<%=redUrl %>')</script><%
	}
%>
</body>
</html>