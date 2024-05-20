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
	<script type="text/javascript">
	    $(document).ready(function() {
	        $('#khOrderByViewCnt').click(function() {
	            window.location.href = '/moran/board?cmd=kh&sort=viewCntDesc';
	        });
	    });
	</script>
</head>
<body>
	<c:forEach var="vo" items="${list }">
		<h5>${vo.b_title} </h5>
		<h5>${vo.b_contents }</h5>
	</c:forEach>
	
	<input type="button" value="인기순 정렬" id="khOrderByViewCnt"/>
	<button type="button" onclick="location.href='?cmd=qna'">모두의 QnA로 이동</button>

</body>
</html>