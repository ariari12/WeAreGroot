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
				<td>${vo.title }</td>
			</tr>
			
			<tr>
				<th>내용</th>
				<td>${vo.contents }</td>
			</tr>
			
			<tr>
				<td rowspan="2">
					<button class="btn btn-success" type="button" onclick="location.href='?cmd=kh'">노하우 목록</button>
					<button class="btn btn-warning" type="button" onclick="location.href='?cmd=khModify&bId=${vo.getBId()}'">수정하기</button>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>