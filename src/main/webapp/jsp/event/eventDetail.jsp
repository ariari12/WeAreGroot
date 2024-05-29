<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 상세</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<link rel="stylesheet" href="./resources/css/event.css" />
<script src="resources/js/event.js"></script>
</head>
<body>
	
	<div class="container" id="eventDetail">
		<div class="formTitle">
			<span>이벤트</span>
		</div>
		<div class="titleBG">
			<div class="eventTitle">
				${evo.title}
			</div>
			<div class="eventPeriod">
				이벤트 기간 : ${evo.start} ~ ${evo.end}
			</div>
		</div>
		
		<div class="eventContentsBox">
			<!-- 이미지 + 이벤트내용  -->
			
			<c:if test="${not empty evo.eventImgVO}" >
				<c:set var="eventImg" value="${evo.eventImgVO}"/>
				<img src="${eventImg.eiImg}" alt="" />
			</c:if>
			<div class="eventContent">
				${evo.contents}
			</div>
			<div class="eventWritedate">
				작성일 : ${evo.writedate}
				
			</div>
		</div>
		
		
		<!-- 댓글작성 : ajax 비동기통신 -->
		<div class="commentBox">
			<div class="commentTop">
				<h5>댓글<span>($댓글수)</span></h5>
			</div>
			
			<!-- jstl반복문 10개씩 페이징 처리 -->
			<div class="commentCell">
				<div>
					<span class="memNick"></span>
					 <span class="regDate"></span>
				</div>
				<div class="commentContents">
					내용
				</div>
			</div>
					
		</div>
	</div>
	
	
</body>
</html>