<%@page import="kr.co.moran.web.vo.CategoryVO"%>
<%@page import="java.util.List"%>
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

<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="resources/js/product.js"></script>

<link rel="stylesheet" href="resources/css/category.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">

<style>
	a {
		text-decoration: none;
		color: #202020;
	}
	.text-wrapper-26 a {
		text-decoration: none;
		color: #ffffff;
	}
	.div-wrapper .frame-23 a {
		text-decoration: none;
		color: #202020;
	}
</style>

</head>
<body>
<%
	MemberVO member = (MemberVO)session.getAttribute("memberVO");
	if(member == null || member.getAdmintype() < 1) {
		request.getRequestDispatcher("unauthorized.jsp").forward(request, response);
	}
	request.setAttribute("admin", true);
	if(request.getAttribute("message") != null) { %>
<script>viewMsg('<%=request.getAttribute("message") %>')</script>
<% 	} %>

<script>
	<%-- 사용자가 선택할 때 마다 ajax로 요청 --%>
	let cId;
	$(() => {
	    $("select#masterCtg").on("click", () => {
	        console.log("하위 카테고리 가져옴");
	        cId = $("select#masterCtg option:selected").val();
	        console.log(cId);
	        
	        $.ajax({
	            type: "post",
	            url: "./product?cmd=modify&type=ctg&ctg=sub",
           		data: {"cId" : cId},
	            dataType: "json",
	            success: function (data) {
	            	console.log("성공");
	                console.log(data);
	                
	                if(data.ctgList == null) {
	                	console.log("ctgList is null");
	                	$("select#subCtg")
	                		.html("<option value=''>카테고리 없음</option>");
	                }
	                else {
	                	subCtgSelects(data.ctgList);
	                }
	            },
	            error: (data, status, err) => {
	            	console.log("실패");
	            	console.log(data);
	            	console.log(err);
	            }
	        });
	    });
	    
	    $("input#submit").on("click", () => {
	        console.log("전송");

	        let data = { 
        		"cId" : $("select#subCtg").val(),
	        	"cParentId" : $("select#masterCtg").val()		
	        };
	        ajaxReq("./product?cmd=delete&type=ctg&ctg=del", 
	                data, "카테고리 삭제 완료");
	    });
	});
</script>


<div class="div-wrapper " style="height: 220px;">
<jsp:include page="layout/header.jsp"></jsp:include>
</div>

<!-- TODO : 객체 가져오고 반복문 순회 완성하기 -->
<div class="container category">
	<div>
	<div style="font-size: 28px; margin: -54px 0px 50px -43px;">카테고리 삭제</div>
	<div style="border: 3px solid gray; margin: -37px 0px 38px -62px; width: 755px;"></div>
	</div>
	<div style="position: relative; top: 33px; left: 150px;">
    <div class="cate-block">
        <span class="cate-label">카테고리 선택</span>
        <select name="masterCtg" id="masterCtg">
       	<% 	// ajax 요청 전 최상위 카테고리 데이터
       	List<CategoryVO> masterList = (List<CategoryVO>)request.getAttribute("masterList");
		// ystem.out.println(masterList.toString());
		for(CategoryVO vo : masterList) {
       	%>
            <option value="<%=vo.getCId() %>"><%=vo.getName() %></option>
		<% 	} %>
        </select>
    </div>
    <div class="cate-block">
       	<span style="color: orange; margin-left: 31px;">※ 선택 안할 시 상위 카테고리로 지정됩니다.</span>
        <br /><br />
        <span class="cate-label">하위 카테고리 선택</span>
        <select name="subCtg" id="subCtg">
            <option value=''>카테고리 없음</option>
        </select>
    </div>
	</div>
	
    <div class="cate-button" style="margin-top: 115px;">
        <a class="btn btn-danger" href="product">삭제 취소</a>
        <input id="submit" class="btn btn-primary" type="button" value="삭제 하기" />
    </div>
</div>

<div class="div-wrapper" style="height: 0px; margin-top: -1350px;">
<jsp:include page="layout/footer.jsp"></jsp:include>
</div>
</body>
</html>