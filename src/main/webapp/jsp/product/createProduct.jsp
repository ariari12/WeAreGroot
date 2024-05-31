<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.moran.web.vo.CategoryVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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

<%-- 상위 카테고리 가져오기 --%>
<%
	List<CategoryVO> ctglist = (List<CategoryVO>)request.getAttribute("masterList");
	if(ctglist == null || ctglist.size() < 1) {
%>
		<script>
			msgRedirect(
				"등록되어 있는 카테고리정보가 없습니다.\n카테고리 등록으로 이동합니다.",
				"product?cmd=add&type=ctg&ctg=view"
			);
		</script>
<% 	} 
	else {
		String jsonToString = "[";
		for(CategoryVO ctg : ctglist) {
			jsonToString += "{"
			 + "\"cId\": " + ctg.getCId() + ","
             + "\"name\": \"" + ctg.getName() + "\","
             + "\"cParentId\": " + ctg.getCParentId()
             + "},";
		}
		jsonToString = jsonToString.substring(0, jsonToString.length() - 1);
		jsonToString += "]";
		
		%><script>
			$(() => {
				ctgOptionAdd(
					JSON.parse('<%=jsonToString %>'),
					"select#sup-ctg"
				);
			});
		</script><%
	}
%>

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('resources/img/product_detail/clover.jpg'); /* 배경 이미지 URL을 여기에 넣으세요 */
        background-size: cover; /* 이미지가 페이지 전체를 덮도록 설정 */
        background-repeat: repeat; /* 이미지가 반복되도록 설정 */
        background-position: center; /* 이미지를 중앙에 배치 */
    }
    h1 {
        font-size: 41px;
        font-weight: bold;
        margin-bottom: 24px;
    }
    a {
    	text-decoration: none;
    	color: #202020;
    }
    .text-wrapper-26 a {
    	color: #ffffff;
    }
    .frame-24 {
    	width: 450px;
    }
    
    input, textarea, select {
        text-align: left;
        border-radius: 7px;
        border: 1px solid #c2d9c2;
        font-size: 18px;
    }
    input[type=date] {
    	width: 150px;
    	height: 32px;
    }
    input[type=file] {
        border-radius: 0;
        border: none;
    	margin-left: -49px;
    }
    
    form.product-inform {
        width: 1000px;
        margin: 0 auto;
        border: 1px solid rgb(187, 187, 187);
        padding: 47px 0 0 3%;
        background-color: #ffffff;
    }

    .product-inform table>tr {
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 25px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        font-size: 18px;
        font-weight: 700;
        margin-right: 50px;
    }
    .full-input {
        width: 90%;
        padding: 8px;
        box-sizing: border-box;
        resize: none;
    }
    .product-inform .input-form {
        width: 350px;
        height: 40px;
    }
    .input-num {
        width: 100px;
        height: 40px;
    }
    
    .product-inform .image-upload {
        display: flex;
        gap: 10px;
    }
    .product-inform .image-upload input {
        flex: 1;
    }
    
    .prd-name {
        display: inline;
    }

    .prd-desc-form {
        margin-bottom: 20px;
    }
    .prd-desc {
        font-size: 25px;
        font-weight: bold;
    }

    .category-inform {
        position: relative;
        margin-left: 49%;
        margin-top: -76px;
        margin-bottom: -14px;
    }

    .bd-img {
        width: 800px;
        margin-bottom: -10px;
        margin-right: -10px;
    }

    .sub-btn {
        position: relative;
        margin-left: 73%;
        top: -34px;
        width: 150px;
        height: 47px;
        font-size: 22px;
        font-weight: 700;
        border: 1px solid #00b267;
        border-radius: 7px;
        color: #00b267;
        background-color: #ffffff;
    }
    .sub-btn:hover {
        background-color: #00b267;
        color: #ffffff;
    }
    
    .can-btn {
	    display: inline-block;
	    left: -19%;
	    top: 13px;
	    border: 1px solid red;
	    color: red;
	    text-align: center;
	    line-height: 42px;
    }
    .can-btn:hover {
        background-color: red;
        color: #ffffff;
    }
</style>

<script>
    $(() => {
        $("#price").on('input', (e) => inputCheck(e));
        $("#quantity").on('input', (e) => inputCheck(e));
        $("#wholesal").on('input', (e) => inputCheck(e));
        $("#dsRate").on('input', (e) => inputCheck(e));

        $("#sub").click(() => {
            if (nullCehck($("#prdName"), "식물이름")
                || ctgCheck()
                || nullCehck($("#fncltyInfo"), "식물 정보")
                || nullCehck($("#watercycleCodeNm"), "물주기 정보")
            ) {
                return false;
            }
            else if (imgCheck()) {
            	return false;
            }
            else if (nullCehck($("#price"), "가격")
                || nullCehck($("#quantity"), "판매 개수")
                || nullCehck($("#wholesal"), "도매가") 
                || (numberCheck($("#dsRate"))
             )) {
                return false;
            }
            else if(dateCheck()) {
                return false;
            }
        });
        
        $("select#sup-ctg").on("change", () => ctgAjax());
    });
</script>

</head>
<body>

<%-- header --%>
<div class="div-wrapper" style="z-index: 4; height: 254px; margin-bottom: -444px;">
<jsp:include page="layout/header.jsp"></jsp:include>
</div>

<%-- navigation --%>
<div style="z-index: 3; position: relative; margin-top: 409px;">
	<jsp:include page="./productNav.jsp"></jsp:include>
</div>

<%-- contents --%>
<div id="input-form">
    <form class="product-inform" action="product-upload" method="post" enctype="multipart/form-data">
        <input type="hidden" name="cmd" value="add" />
        <input type="hidden" name="type" value="prd" />
        <input type="hidden" name="prd" value="confirm" />
        
        <h1>상품 등록</h1>
        <div class="form-group prd-name">
            <label class="prd-desc">상품 이름</label>
            <input class="input-form" type="text" id="prdName" name="prdName" placeholder="필수 입력란입니다." required>
        </div>
        
        <div class="form-group category-inform">
            <label>카테고리</label>
            <select class="input-form clCodeNm" id="sup-ctg" name="category" required>
                <option value="">상위 카테고리 선택 (필수)</option>
            </select>
            <br><br>
            <select class="input-form clCodeNm" id="sub-ctg" name="subcategory">
                <option value="">하위 카테고리 선택 (선택사항)</option>
                <option value="">선택 없음</option>
            </select>
        </div>


        <div class="form-group prd-desc-form">
            <label class="prd-desc">상품 설명</label>

            <div class="form-group">
                <label class="full-input">식물 정보</label>
                <textarea class="full-input" id="fncltyInfo" name="fncltyInfo" placeholder="필수 입력란입니다." required></textarea>
            </div>

            <div class="form-group">
                <label class="full-input">특별 관리 정보</label>
                <textarea class="full-input" id="speclmanageInfo" name="speclmanageInfo"></textarea>
                <label class="full-input">조언 정보</label>
                <textarea class="full-input" id="adviseInfo" name="adviseInfo"></textarea>
            </div>
    
            <table class="form-group" style="width: 100%;">
                <tr>
                    <td><label>물 주기</label></td>
                    <td><label>배치 장소</label></td>
                </tr>
                <tr>
                    <td><input class="input-form" id="watercycleCodeNm" name="watercycleCodeNm" placeholder="필수 입력란입니다." required></td>
                    <td><input  class="input-form"id="postngplaceCodeNm" name="postngplaceCodeNm"></td>
                </tr>
                <tr>
                	<td colspan="2"><br/></td>
                </tr>
                <tr>
                    <td><label>관리 요구도</label></td>
                    <td><label>관리 수준</label></td>
                </tr>
                <tr>
                    <td><input class="input-form" id="managedemanddoCodeNm" name="managedemanddoCodeNm"></td>
                    <td><input  class="input-form"id="managelevelCodeNm" name="managelevelCodeNm"></td>
                </tr>
            </table>
            <br>
    
            <div class="form-group">
                <label>이미지 업로드(최대 3장 1장 당 파일용량 : 5MB)</label>
                <div style="margin-bottom: 10px"></div>
                <div class="image-upload">
                	<label>대표 이미지 필수</label>
                	<div id="inform-imgs" style="margin-left: -149px; margin-top: 27px;">
	                    <input type="file" id="title-img" name="image1" accept="image/*">
	                    <input type="file" name="image2" accept="image/*">
	                    <input type="file" name="image3" accept="image/*">
                	</div>
                </div>
            </div>
        </div>
        <br>

        <table style="width: 100%;">
            <tr class="form-group">
                <td><label>가격 (판매가)</label></td>
                <td><label>판매 개수</label></td>
                <td><label>도매가 (원가)</label></td>
                <td><label>할인율 (%)</label></td>
            </tr>
            <tr>
            	<td><div style="margin-bottom: 10px"></div></td>
            </tr>
            <tr class="form-group">
                <td><input class="input-num" type="text" id="price" placeholder="필수 입력" name="price" required><span>단위: 원</span></td>
                <td><input class="input-num" type="text" id="quantity" placeholder="필수 입력" name="quantity" required></td>
                <td><input class="input-num" type="text" id="wholesal" placeholder="필수 입력" name="wholesal" required></td>
                <td><input class="input-num" type="text" id="dsRate" name="dsRate" min="0" max="100"></td>
            </tr>
        </table>
        <br><br>

        <div class="form-group">
            <label for="startDate">판매 시작일 <span style="font-size: 14px; margin-left: 10px; color: rgb(255, 153, 0);"> ※필수 입력란입니다.</span></label>
            <div style="margin-bottom: 10px"></div>
            <input type="date" id="startDate" name="startDate" required>
        </div>

        <a style="display: block;" class="sub-btn can-btn" href="./product">등록 취소</a>
        <button class="sub-btn" id="sub" type="submit">등록</button>
    </form>
</div>

<%-- footer --%>
<div class="div-wrapper" style="z-index: 1; height: 0; top: -1367px;">
<jsp:include page="layout/footer.jsp"></jsp:include>	
</div>

</body>
</html>