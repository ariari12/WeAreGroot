
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 	
<c:choose>
<c:when test="${not empty sessionScope.memberVO}">
<c:set var="admintype" value="${sessionScope.memberVO.admintype}" scope="request"></c:set>
</c:when>
<c:otherwise>
<c:set var="admintype" value="${0}" scope="request"></c:set>
</c:otherwise>
</c:choose>

<script>
$(() => {
	let clickEnable = false;
	$(".category").hide();
	
	$(".prd_nav-categoryframe").click(() => {
		clickEnable = !clickEnable;
		
		console.log("카테고리 전체 클릭");
		console.log(clickEnable);
		
		if(clickEnable) {
			$(".category").show();
		}
		else {
			$(".category").hide();
		}
	});
});
</script>



<div class="prd_nav-group">
    <div class="prd_nav-view">
        <div class="prd_nav-categoryframe">
            <div class="nav_group">
                <div class="rectangle"></div>
                <div class="nav_gap"></div>
                <div class="nav_rectangle-2"></div>
                <div class="nav_rectangle-3"></div>
            </div>
            <div class="category-list">카테고리 전체</div>
        </div>
        <div class="products-container">
	        <div class="nav-subtitle">
	        	<a style="text-decoration: none; font-family: 'Pretendard Variable-Bold', Helvetica; font-weight: bold;
	        	color: #202020; font-size: 20px;" href="?cmd=lsit">전체 상품</a>
	        </div>
        </div>
        <div class="products-container">
	        <div class="nav-subtitle">
	        	<a style="text-decoration: none; font-family: 'Pretendard Variable-Bold', Helvetica; font-weight: bold;
	        	color: #202020; font-size: 20px;" href="?cmd=list&type=popul">이달의 인기상품</a>
	       	</div>
       	</div>
        <div class="products-container">
	        <div class="nav-subtitle">
	        	<a style="text-decoration: none; font-family: 'Pretendard Variable-Bold', Helvetica; font-weight: bold;
	        	color: #202020; font-size: 20px;" href="?cmd=list&type=latest">최신 상품</a>
	       	</div>
       	</div>
       	
       	<%-- 상품등록 버튼 : 관리자 용 --%>
<c:if test="${admintype > 0}">
        <div class="products-container">
	        <div class="nav-subtitle">
	        	<a style="text-decoration: none; font-family: 'Pretendard Variable-Bold', Helvetica; font-weight: bold;
    			color: #00b267; font-size: 20px;" href="?cmd=add&type=prd&prd=view">상품등록</a>
	       	</div>
       	</div>
       	
    	<div class="products-container">
	        <div class="nav-subtitle">
	        	<a style="text-decoration: none; font-family: 'Pretendard Variable-Bold', Helvetica; font-weight: bold;
    			color: #ff000a; font-size: 20px;" href="?cmd=list&type=save">보관상품 목록보기</a>
	       	</div>
       	</div>       	
       	
    	<div class="products-container">
	        <div class="nav-subtitle">
	        	<a style="text-decoration: none; font-family: 'Pretendard Variable-Bold', Helvetica; font-weight: bold;
    			color: #ff000a; font-size: 20px;" href="?cmd=list&type=save">품절상품 목록 보기</a>
	       	</div>
       	</div>
</c:if>
    </div>
</div>

<div class="category-list">
<jsp:include page="./categoryView.jsp"></jsp:include>

</div>