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
<title>카테고리 등록</title>

    
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

    .category-con {
        border: 3px solid rgb(173, 173, 173);
	    width: 900px;
	    height: 435px;
	    padding: 0 25px;
    }

    .category-con .ctg-box {
        background-color: rgb(216 241 194);
        width: 228px;
        height: 400px;
        margin-top: 15px;
        padding: 13px;
    }

    .category-con .category-choice {
        margin-left: 40px;
        margin-top: 43px;
        width: 200px;
        display: flex;
        gap: 4px;
        flex-wrap: wrap;
    }

    .category-con .ctg-editZone {
        border: 2px solid #9d9d9d;
        margin: -400px 0 0 237px;
        width: 600px;
        height: 400px;
    }

    .ctg-editZone .ctg-input-head {
    	font-size: 26px;
        margin-top: 23px;
        margin-left: 30px;
        font-weight: 700;
    }
    .ctg-editZone .ctg-liner {
	    margin-top: 20px;
	    margin-left: 25px;
        border: 4px solid #b1b1b1;
    }

    .category-con .ctg-input {
        margin-top: 50px;
        margin-left: 175px;
    }
    .ctg-input .ctg-input-label {
        margin-bottom: 10px;
    }
    .ctg-input .ctg-sub {
        position: absolute;
	    top: 585px;
	    left: 1205px;
        width: 100px;
    }

</style>

</head>
<body>

<%
	MemberVO member = (MemberVO)session.getAttribute("memberVO");
	System.out.println(member);

	if(member == null || member.getAdmintype() < 1) {
		request.getRequestDispatcher("unauthorized.jsp").forward(request, response);
	}
	request.setAttribute("admin", true);
	if(request.getAttribute("message") != null) { %>
<script>viewMsg('<%=request.getAttribute("message") %>')</script>
<% 	} %>


<script>
    $(() => {
        $("div.ctg-super").hide();
        $("div.ctg-sub").hide();

        $("button#super-add").click(() => {
            $("div.ctg-super").show();
            $("div.ctg-sub").hide();
        });
        
        $("button#sub-add").click(() => {
            $("div.ctg-super").hide();
            $("div.ctg-sub").show();
            
            $.ajax({
                type: "post",
                url: "./product?cmd=add&type=ctg&ctg=sub",
                dataType: "json",
                success: function (data) {
                	console.log("성공");
                    console.log(data);
                    
                    if(data.ctgList == null) {
	                	console.log("ctgList is null");
	                	$("select#subCtg")
	                		.html("<option value='null'>카테고리 없음</option>");
	                }
	                else {
	                	subCtgSelects(data.ctgList);
	                }

                },
                error: (data, err) => {
                	console.log("실패");
                	console.log(data);
                	console.log(err);
                }
            });
        });
        
        $("button.ctg-sup-submit").click(() => {
	        console.log("전송");
	        let ctgName = $("input#superCtg-name").val();
	        if(ctgName.length < 2) {
	        	viweMsg("카테고리 이름은 최소 2글자 이상입니다.");
	        	return;
	        }
	        
	        let data = {
       			"cParentId" : null,
       			"name" : ctgName
      		};
        	
        	ajaxReq("./product?cmd=add&type=ctg&ctg=confirm",
        			data, "카테고리 등록 완료");
        });
        
        
        $("button.ctg-sub-submit").click(() => {
	        console.log("전송");
	        let cParentId = $("#subCtg").val()
	        let ctgName = $("input#subCtg-name").val();
	        if(ctgName.length < 2) {
	        	viweMsg("카테고리 이름은 최소 2글자 이상입니다.");
	        	return;
	        }
	        
        	let data = {
        			"cParentId" : cParentId,
        			"name" : ctgName
    		};
        	
        	ajaxReq("./product?cmd=add&type=ctg&ctg=confirm",
        			data, "카테고리 등록 완료");
        });
    });
</script>


<div class="div-wrapper " style="height: 260px;">
<jsp:include page="layout/header.jsp"></jsp:include>
</div>

<div class="container category-con">
    <div class="ctg-box">
        <div class="category-choice">
            <button id="super-add" class="btn btn-primary" type="button">상위 카테고리 등록</button>
            <button id="sub-add" class="btn btn-warning" type="button">하위 카테고리 등록</button>
        </div>
    </div>
    <div class="ctg-super ctg-editZone">
        <h3 class="ctg-input-head">상위 카테고리 등록</h3>
        <div class="ctg-liner"></div>
        <div class="ctg-input">
            <div class="ctg-input-label">상위 카테고리 이름</div>
            <input class="ctg-input-label" type="text" name="superCtg-name" id="superCtg-name">
            <br>
            <button class="btn btn-primary ctg-sub ctg-sup-submit" type="button">등록</button>
        </div>
    </div>
    <div class="ctg-sub ctg-editZone">
        <h3 class="ctg-input-head">하위 카테고리 등록</h3>
        <div class="ctg-liner"></div>
        <div class="ctg-input">
            <div class="ctg-input-label">상위 카테고리 선택
                <select name="subCtg" id="subCtg">
                	<option value="null">카테고리 없음</option>
                </select>
            </div>
            <div class="ctg-input-label">하위 카테고리 이름</div>
            <input class="ctg-input-label" type="text" name="subCtg-name" id="subCtg-name">
            <br>
            <button class="btn btn-primary ctg-sub ctg-sub-submit" type="button">등록</button>
        </div>
    </div>
</div>

<div class="div-wrapper" style="height: 0px; margin-top: -1350px;">
<jsp:include page="layout/footer.jsp"></jsp:include>
</div>
</body>
</html>