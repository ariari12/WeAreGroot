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
<script src="./resources/js/event.js"></script>

</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<div class="container" id="eventDetail">
		<div class="formTitle">
			<span>이벤트</span>
		</div>
		<div class="titleBG">
			<div class="eventTitle">${evo.title}</div>
			<div class="eventPeriod">이벤트 기간 : ${evo.start} ~ ${evo.end}</div>
		</div>

		<div class="eventContentsBox">
			<!-- 이미지 + 이벤트내용  -->

			<c:if test="${not empty evo.eventImgVO}">
				<c:set var="eventImg" value="${evo.eventImgVO}" />
				<img src="${eventImg.eiImg}" alt="" />
			</c:if>
			<div class="eventContent">${evo.contents}</div>
			<div class="eventWritedate">작성일 : ${evo.writedate}</div>
		</div>


		<!-- 댓글작성 : ajax 비동기통신 -->
		<div class="commentBox">
			<div class="commentTop">
				<h5>
					댓글 <span>(${cList.size()})</span>
				</h5>
			</div>
			<c:if test="${not empty memberVO.getNick()}">
				<div class="commentWriteContainer">
					<c:choose>
						<c:when test="${not empty memberVO.getProfileImg()}">
							<div class="profileImage">
								<img src="${memberVO.getProfileImg()}" alt="" />
							</div>
						</c:when>
						<c:otherwise>
							<div class="profileImage">
								<img src="./resources/img/member/noProfile.PNG" alt="" />
							</div>
						</c:otherwise>
					</c:choose>
					<div class="writeCommentContainer">
						<input type="text" class="writeComment" name="writeComment"
							placeholder="바른말 고운말!">
						<div class="writeComment-tail"></div>
						<button class="btn btn-success writeCommentBtn">작성</button>
					</div>
				</div>
			</c:if>
			
			<c:forEach var="cList" items="${cList}">

				<div class="commentCell">
					<input type="hidden" name="eId" value="${cList.eId}" />
					<input type="hidden" name="mId" value="${cList.mId}" />
					<input type="hidden" name="cId" value="${cList.cId}" />
			
					<div>
						<span class="memNick">${cList.nick}</span> <span class="regDate">${cList.regDate}</span>
					</div>
					<div class="commentContents">${cList.contents}</div>
					<button class="reCommentBtn" type="button">답글</button>
			
					<div class="replyForm" style="display: none;">
						<!-- 댓글의댓글(테이블자기참조) -->
						
						
						<input type="text" class="reWriteComment" name="reWriteComment"
							placeholder="바른말 고운말!">
						<input type="hidden" name="parentId" value="${cList.id}">
						<button class="btn btn-success reWriteCommentBtn">작성</button>
					</div>

				</div>
			</c:forEach>
		</div>
	</div>


</body>
</html>