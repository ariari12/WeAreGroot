<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(() => {
	$(".union").click(() => {
		let keyword = $("input.frame-24").val();
		window.location = "./product?cmd=list&type=search&search=" + keyword;
	});
});
</script>

	<div class="header">		
		<a href="main"><img  src="resources/img/header.svg"/></a>		
	</div>
      <div class="frame-20">
        <div class="frame-21">
          <div class="frame-23"><div class="text-wrapper-24"><a href="main">홈</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24"><a href="board">커뮤니티</a></div></div>
          <div class="frame-22"><div class="text-wrapper-23"><a href="product">스토어</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24"><a href="">공지</a></div></div>
          <div class="frame-23">
            <div class="text-wrapper-24"><a href="./event">이벤트</a></div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-23"><div class="text-wrapper-24"><a href="">1:1 문의</a></div></div>
        </div>
        <input class="frame-24" size="50" placeholder="상품 또는 식물 검색하기">
      	<img class="union" src="resources/img/union.svg" />
      </div>
      
      <c:choose>
		<c:when test="${not empty sessionScope.memberVO}">			
			<div class="frame-wrapper">
				<div class="frame-25">
					<div class="frame-26"><div class="text-wrapper-26">
						<a href="member?cmd=myPageForm">마이페이지</a>
					</div></div>
					<div class="frame-26"><div class="text-wrapper-26">
						<a href="member?cmd=logoutOk">로그아웃</a>
					</div></div>
					<div class="frame-26"><div class="text-wrapper-26">
						<a href="cart?cmd=list">장바구니</a>
					</div></div>
				</div>
			</div>				
		</c:when>
		<%-- <c:if test="${not empty sessionScope.memberVO}">    
	    	<p>회원 Email: ${sessionScope.memberVO.email}</p>
	    	<p>회원 pw: ${sessionScope.memberVO.pw}</p>
	    <!-- 기타 회원 정보 출력 -->
		</c:if> --%>
		<c:otherwise>
			<div class="frame-wrapper">
				<div class="frame-25">
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=loginForm">로그인</a></div></div>
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=joinForm">회원가입</a></div></div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
