<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productQa page</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../resources/css/productQa.css">

</head>
<body>
    
    <div class="qa-form">
        <div class="qa-form-title">
            <h2>문의</h2>
        </div>

        <div class="qa-form-navMenu">
            <ul class="nav nav-tabs">
                <li class="allQa nav-item">전체보기</li>
                <li class="prdQa nav-item">상품</li>
                <li class="dlvQa nav-item">배송</li>
                <li class="tibQa nav-item">반품</li>
                <li class="swQa nav-item">교환</li>
                <li class="rfdQa nav-item">환불</li>
                <li class="etcQa nav-item">기타</li>
            </ul>
        </div>

        <div class="qa-form-qaCard">
            <div class="writerInfo">
                <span>이름</span>
                <span> | </span>
                <span>등록일</span>
            </div>
            <div class="qa-question">
                <!-- m_admintype이 0이면 A /1이면 Q -->
                <div class="qa-question-text">
                    Q
                </div>
                <div class="qaContents">
                    문의 내용
                </div>
            </div>
        </div>

		<div class="pagenation">
			<button class="btn btn-primary">이전</button>
			<button class="btn btn-primary">다음</button>
		</div>

    </div>



</body>
</html>