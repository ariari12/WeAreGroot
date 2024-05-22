<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<style>

</style>
</head>
<body>

	<div class="container">
	
		<c:forEach var="eList" items="${eList}">
			<div class="eventBox col">
				<div class="eventThum">
					<c:if test="${not empty eList.eventImgVO}">
					<img src="${eList.eventImgVO.eiImg}" alt="" />
					</c:if>
				</div>
				<div class="eventInfo">
					<span class="title">${eList.title}</span>
					<span class="due">D-(${eList.end}-${eList.start})</span>
				</div>
			</div>
			<input type="hidden" name="eId" value="${eList.eId}"/>
		</c:forEach>

	</div>


</body>
</html>