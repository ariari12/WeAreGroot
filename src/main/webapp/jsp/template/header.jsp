<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product QA Page</title>
<link rel="stylesheet" href="resources/css/header.css">
<script src="resources/js/header.js"></script>

<script>
	$(() => {
		$(".search-icon-wrapper").click(() => {
			let keyword = $("input.search-placeholder").val();
			window.location = "./product?cmd=list&type=search&search=" + keyword;
		});
	});
</script>
</head>
<body>
		<div class="login-register-bar">
			<div class="login-register-links">
				<c:choose>
					<c:when test="${not empty sessionScope.memberVO}">
						<div class="link-wrapper">
							<div class="link-text myInfo">마이페이지</div>
						</div>
						<div class="link-wrapper logout">
							<div class="link-text">로그아웃</div>
						</div>
						<div class="link-wrapper">
							<div class="link-text myBag">장바구니</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="link-wrapper">
							<div class="link-text login">로그인</div>
						</div>
						<div class="link-wrapper">
							<div class="link-text join">회원가입</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div class="site-header">
			<img class="header-logo" src="resources/img/header.svg" />
		</div>
		<div class="navbar">
			<div class="navbar-links">
				<div class="link-wrapper">
					<div class="link-text">
						<a href="/moran/main">홈</a>
					</div>
				</div>
				<div class="link-wrapper">
					<div class="link-text">
						<a href="/moran/board">커뮤니티</a>
					</div>
				</div>
				<div class="link-wrapper">
					<div class="link-text">
						<a href="/moran/product">스토어</a>
					</div>
				</div>
				<div class="link-wrapper">
					<div class="link-text">
						<a href="#">공지</a>
					</div>
				</div>
				<div class="link-wrapper">
					<div class="link-text">
						<a href="/moran/event">이벤트</a>
					</div>
					<div style="margin-top: -18px; margin-left: 67px;" class="notification-dot"></div>
				</div>
				<div class="link-wrapper">
					<div class="link-text">
						<a href="#">1:1 문의</a>
					</div>
				</div>
			</div>
			<div class="search-wrapper">
				<input type="text" class="search-bar search-placeholder" placeholder="상품 또는 식물 검색하기">
				<div class="search-icon-wrapper">
					<img class="search-icon" src="resources/img/union.svg" />
				</div>
			</div>
		</div>
</body>
</html>