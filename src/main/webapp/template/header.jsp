<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
	#header{
		width: 100%;
	}
	div.logBar{
		background-color: rgba(77,77,77,1);
		height: 48px;
		display: block;
		text-align: right;
		padding-right: 50px;
	}
	.logBar a{
		font-size: 20px;
		font-weight: bold;
		color: #fff;
		text-decoration: none;
		line-height: 2.4em;
	}
	.logArea{
	}

</style>
</head>
<body>
	<header id="header">
		<div class="row logBar">
			<a href="/login">로그인</a>
			<a href="/join">회원가입</a>
		</div>
		<div class="logoArea">
			<img src="../resources/img/dumi.png" alt="모란모란" width="121.08px" height="40.63px"/>
		</div>
	</header>
</body>
</html>