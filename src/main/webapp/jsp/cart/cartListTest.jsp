<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style type="text/css">
	* {
	text-align: center;
	}
</style>
</head>
<body>
	
	<h2> CART TEST PAGE </h2>
	
	<div class="container">
		<table class="table table-strpied">
			<tr>
				<th>선택</th>
				<th>사진</th>
				<th>상품코드</th>
				<th>카테고리</th>
				<th>재고량</th>
				<th>상품이름</th>
				<th>가격</th>
				<th>선택개수</th>
				<th>총합가격</th>
			<tr>
			<c:forEach var="vo" items="${cartVO }">
				<tr>
					<td> <input type="checkbox" name="" id="" style="zoom:2.0;"/>
					<td> <img src="${vo.getPImg() }" alt="" style="width: 30px; height: 30px"/> </td>
					<td> ${vo.getPId() } </td>
					<td> ${vo.getCId() } </td>
					<td> ${vo.getPQuantity() } </td>
					<td> ${vo.getPName() } </td>
					<td> ${vo.getPPrice() } </td>
					<td> ${vo.getMCnt() } </td>
					<td> ${vo.getMCnt() * vo.getPPrice()} </td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="8">0원</td>
				<td colspan="1">
					<input type="button" class="btn btn-success" value="결제하기"/>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>