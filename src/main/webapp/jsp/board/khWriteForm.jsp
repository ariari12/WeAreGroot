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
	
</head>
<body>
	<div class="container">
	<h2>노하우 글 작성</h2>
		<form action="board/writekhOk" method="post" class="reviewWrite" enctype="multipart/form-data">
			<table class="table">
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title"/>
						<!-- <input type="hidden" name="cmd" value="khWriteOk" /> -->
					</td>
				</tr>
				
				<tr>
					<th>내용</th>
					<td>
						<textarea name="contents" id="contents" cols="30" rows="10"></textarea>
					</td>
				</tr>
				
				<tr>
					<th>이미지</th>
					<td>
						<input type="file" name="biImg" id="biImg" accept="image/*" onchange="loadFile(this)"/>
					</td>
				</tr>
				
				<tr>
					<td rowspan="2">
						<button class="btn btn-success" type="button" onclick="location.href='?cmd=kh'">노하우로 이동</button>
						<input class="btn btn-primary" type="submit" value="등록하기" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>