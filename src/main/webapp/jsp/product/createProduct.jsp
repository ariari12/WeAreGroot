<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="resources/js/product.js"></script>
<script src="resources/js/product_detail.js"></script>

<link rel="stylesheet" href="resources/css/product.css">
<link rel="stylesheet" href="resources/css/product_detail.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">

<style>
#input-form {
	height: 1600px;
	background-color: blue;
}
</style>

</head>
<body>

<%-- header --%>
<div class="div-wrapper" style="z-index: 4; height: 254px; margin-bottom: -444px;">
<jsp:include page="layout/header.jsp"></jsp:include>
</div>

<%-- nav --%>
<div style="z-index: 3; position: relative; margin-top: 418px;">
	<jsp:include page="./productNav.jsp"></jsp:include>
</div>

<div id="input-form">
	

</div>

<%-- footer --%>
<div class="div-wrapper" style="z-index: 1; height: 476px; top: -1400px;">
<jsp:include page="layout/footer.jsp"></jsp:include>	
</div>

</body>
</html>