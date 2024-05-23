<%@page import="kr.co.moran.web.vo.member.MemberVO"%>
<%@page import="java.lang.reflect.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카테고리 수정</title>

    
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<script src="resources/js/product.js"></script>

<link rel="stylesheet" href="resources/css/category.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">

</head>
<body>
<%
	MemberVO member = (MemberVO)session.getAttribute("memberVO");
	if(member == null || Integer.parseInt(member.getAdmintype()) < 1) {
		request.getRequestDispatcher("unauthorized.jsp").forward(request, response);
	}
	if(request.getAttribute("message") != null) { %>
<script>viewMsg('<%=request.getAttribute("message") %>')</script>
<% 	} %>

<script>
	$(() => {
	    $("select#masterCtg").on("change", () => {
	        console.log("선택됨");
	        let cId = $("select#masterCtg option:selected").val();
	        console.log(cId);
	        $.ajax({
	            type: "post",
	            url: "./product?cmd=modify&type=ctg&ctg=sub&CID=" + cId,
	            dataType: "json",
	            success: function (data) {
	                console.log(data);
	            }
	        });
	    });
	
	    $("select#masterCtg").on("change", () => {
	        console.log("선택됨");
	        $.ajax({
	            type: "post",
	            url: "./product?cmd=modify&type=ctg&ctg=sub",
	            dataType: "json",
	            success: function (data) {
	                console.log(data);
	            }
	        });
	    });
	});
</script>


<div class="div-wrapper " style="height: 220px; z-index: 3;">
<jsp:include page="../layout/header.jsp"></jsp:include>
</div>

<!-- TODO : 객체 가져오고 반복문 순회 완성하기 -->
<div class="container category">
    <div class="cate-block">
        <span class="cate-label">카테고리 선택</span>
        <select name="masterCtg" id="masterCtg">
            <option value="1">카테1</option>
            <option value="2">카테2</option>
            <option value="3">카테3</option>
            <option value="4">카테4</option>
            <option value="5">카테5</option>
        </select>
    </div>
    <div class="cate-block">
        <span class="cate-label">하위 카테고리 선택</span>
        <select name="subCtg" id="subCtg">
            <option value="">하위1</option>
            <option value="">하위2</option>
            <option value="">하위3</option>
            <option value="">하위4</option>
            <option value="">하위5</option>
        </select>
    </div>
    <div class="cate-block">
        <span class="cate-label">참조할 상위 카테고리 선택</span>
        <select name="" id="">
            <option value="">상위1</option>
            <option value="">상위2</option>
            <option value="">상위3</option>
            <option value="">상위4</option>
            <option value="">상위5</option>
        </select>
    </div>
    <div class="cate-block">
        <span class="cate-label">변경할 카테고리 이름</span>
        <input type="text" name="" id="">
    </div>

    <div class="cate-button">
        <input class="btn btn-danger" type="button" value="변경 취소">
        <input class="btn btn-primary" type="button" value="변경 하기">
    </div>
</div>

<div class="div-wrapper" style="height: 0px; margin-top: -1350px;">
<jsp:include page="../layout/footer.jsp"></jsp:include>
</div>
</body>
</html>