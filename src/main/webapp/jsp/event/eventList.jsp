<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event page</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resources/css/event.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">
<script src="resources/js/event.js"></script>

</head>
<body>

	<jsp:include page="../template/header.jsp"></jsp:include>
	<div class="container" id="eventList">
		<div class="topArea">
			<span class="menuTitle fs-1">이벤트</span>
		</div>
		<c:forEach var="eList" items="${eList}">
			<div class="eventBox col-md-3">
				<input class="eId" type="hidden" name="eId" value="${eList.eId}"/>
				<div class="eventThum">
				<c:choose>
					<c:when test="${not empty eList.eventImgVO}">
						<img src="${eList.eventImgVO.eiImg}" alt="" />
					</c:when>
					<c:otherwise>
						<img src="./resources/img/event/noImg.jpg" alt="" />
					</c:otherwise>
				</c:choose>
					
				</div>
				<div class="topInfo">
					
				<c:choose>
					<c:when test="${fn:length(eList.title)>15}">
						<span class="title">
							${fn:substring(eList.title,0,16)} ...
						</span>
					</c:when>
					<c:otherwise>
						<span class="title">
							${eList.title}
						</span>
					</c:otherwise>
				</c:choose>
					<span class="due">D-
						<jsp:useBean id="now" class="java.util.Date" scope="request"/>
						<fmt:parseNumber value="${now.time/(1000*60*60*24)}" integerOnly="true" var="nowDay" scope="request"/>
						<fmt:parseNumber value="${eList.end.time/(1000*60*60*24)}" integerOnly="true" var="endDay" scope="page"/>
						<c:set value="${endDay - nowDay}" var="dDay"/>
						<c:out value="${dDay}"/>
						
					</span>
				</div>
				<div class="bottomInfo">
					<span class="writer">${eList.memberVO.nick}</span>|
					<span class="regdate">
						${eList.writedate}
					</span>
				</div>
				
			</div>

		</c:forEach>

	</div>


</body>
</html>