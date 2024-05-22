<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</head>
<body>
	<jsp:include page="/jsp/layout/header.jsp"></jsp:include>
	<div class="container">
	
		<c:forEach var="eList" items="${eList}">
			<input type="hidden" name="eId" value="${eList.eId}"/>
			<div class="eventBox">
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
		</c:forEach>

	</div>

	<jsp:include page="/jsp/layout/footer.jsp"></jsp:include>
</body>
</html>