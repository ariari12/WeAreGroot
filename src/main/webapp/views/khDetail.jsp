<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>노하우 상세보기 페이지</h2>
		<table class="table">
			<tr>
				<th>제목</th>
				<td>${boardVO.title }</td>
			</tr>
			
			<tr>
				<th>내용</th>
				<td>${boardVO.contents }</td>
			</tr>
			
			<tr>
				<td rowspan="2">
					<button class="btn btn-success" type="button" onclick="location.href='?cmd=kh'">노하우 목록</button>
					<button class="btn btn-warning" type="button" onclick="location.href='?cmd=khModify&bId=${vo.getBId()}'">수정하기</button>
				</td>
			</tr>
			
		</table>
	</div>
	
		<div class="container">
			<h4>댓글</h4>
			<table class="table">
				<c:forEach var="commentVO" items="${commentList }">
					<tr>
						<td>내용 : ${commentVO.contents } | 글쓴이Id : ${commentVO.getMId() }</td>
					</tr>				
				</c:forEach>
			</table>
		
		</div>
	
	<form action="comment" method="post">
		<h3>댓글작성</h3>
		<input type="hidden" name="cmd" value="commentWrite">
        <input type="hidden" name="bId" value="${boardVO.getBId()}">
        <input type="hidden" name="mId" value="${boardVO.getMId()}">
		<textarea name="contents" id="contents" cols="100" rows="10"></textarea>
		<button type="submit">댓글작성</button>
	</form>


</body>
</html>