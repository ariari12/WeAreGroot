<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(() => {
	$(".prd_nav-categoryframe").click(() => {
		// $(".category-list").html();
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
        <div class="products-container"><div class="nav-subtitle">전체 상품</div></div>
        <div class="products-container"><div class="nav-subtitle">이달의 인기상품</div></div>
    </div>
</div>

<div class="category-list">
<jsp:include page="./categoryView.jsp"></jsp:include>
</div>