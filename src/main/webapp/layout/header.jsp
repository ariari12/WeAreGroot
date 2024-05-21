<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body>
	<header id="header">
		<c:choose>
			<c:when test="${not empty sessionScope.memberVO}">
				<div class="row logBar">
					<a href="">내 정보</a>
					<a href="">로그아웃</a>
					<a href="">장바구니</a>
				</div>				
			</c:when>
			<c:otherwise>
				<div class="row logBar">
					<a href="/moran/jsp/member/loginForm.jsp">로그인</a>
					<a href="/moran/jsp/member/joinForm.jsp">회원가입</a>
				</div>
			</c:otherwise>
		</c:choose>
		
		
		<div class="logoArea">
			<img src="../resources/img/moranLogo.png" alt="모란모란" width="121.08px" height="40.63px"/>
		</div>
		<div class="navBar">
			<ul>
				<li><a href="/home">홈</a></li>
				<li><a href="/community">커뮤니티</a></li>
				<li><a href="/store">스토어</a></li>
				<li><a href="/notice">공지</a></li>
				<li><a href="/event">이벤트</a></li>
				<li><a href="/inquiry">문의</a></li>
			</ul>
		</div>
	</header>
</body>
</html>