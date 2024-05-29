<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div class="header">		
		<a href="index.jsp"><img  src="resources/img/header.svg"/></a>		
	</div>
      <div class="frame-20">
        <div class="frame-21">
          <div class="frame-22"><div class="text-wrapper-23"><a href="index.jsp">홈</a></div></div>

          <div class="frame-23"><div class="text-wrapper-24"><a href="./board">커뮤니티</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24"><a href="./product">스토어</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24">공지</div></div>
          <div class="frame-23">
            <div class="text-wrapper-24">이벤트</div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-23"><div class="text-wrapper-24">1:1 문의</div></div>
        </div>
        <div class="frame-24">
          <div class="text-wrapper-25">상품 또는 식물 검색하기</div>
          <div class="union-wrapper"><img class="union" src="resources/img/union.svg" /></div>
        </div>
      </div>
      
      <c:choose>
		<c:when test="${not empty sessionScope.memberVO}">			
			<div class="frame-wrapper">
				<div class="frame-25">
					<div class="frame-26"><div class="text-wrapper-26">내 정보(링크 없음)</div></div>
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=logoutOk">로그아웃</a></div></div>
					<div class="frame-26"><div class="text-wrapper-26">장바구니(링크 없음)</div></div>
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
