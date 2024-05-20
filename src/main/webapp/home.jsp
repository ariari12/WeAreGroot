<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<h2>홈화면</h2>
<c:if test="${not empty sessionScope.memberVO}">
    <p>회원 이름, ${sessionScope.memberVO.name}!</p>
    <p>회원 Email: ${sessionScope.memberVO.email}</p>
    <!-- 기타 회원 정보 출력 -->
</c:if>
</body>
</html>