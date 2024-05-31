<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모란모란 - 장바구니</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/cart.css" />
    <script src="resources/js/cart.js?v=<%=System.currentTimeMillis() %>"></script>
    
</head>
<body>
    <div class="container">
        <h3 class="cart-text"><a href="./main">홈</a>><a href="cart">장바구니</a></h3>
        <div class="cart-table">
            <div class="cart-header">
                <div style="flex: 0 0 5%; text-align: center;">
                    <input class="cart-checkbox form-check-input" type="checkbox" name="" id="check-all" checked>
                </div>
                <div class="cart-th-left">상품정보</div>
                <div class="cart-th-center">수량</div>
                <div class="cart-th-center">주문금액</div>
            </div>
            <div class="cart-list">
	            <c:forEach var="vo" items="${cartVO }">
		            <div class="cart-item" id="cart-item">
		                <div class="cart-item-th-cetner">
		                	<% // 재고가 남아있다면 checkbox를 생성 %>
		                	<c:if test="${vo.getPQuantity() >= 1}">
		                    	<input class="form-check-input cart-checkbox checkboxs" type="checkbox" name="" id="check-${vo.getPId() }" checked>
		                    </c:if>
		                </div>
		                <div class="cart-item-th-left">
		                	<% // 프로젝트를 합치면서 주소가 바뀔 예정 수정해주어야 함. %>
		                	<a href="product?cmd=detail&no=${vo.getPId() }">
		                    <img class="product-img" src="${vo.getPImg() }" alt="">
		                    <% // 재고가 없다면 취소선, 품절 표시 %>
		                    <c:choose>
		                    	<c:when test="${vo.getPQuantity() >= 1}">
					            	<span class="product-name">${vo.getPName() }</span>
					         	</c:when>
					         	<c:otherwise>
					            	<span class="product-name"><del>${vo.getPName() }</del> <b>(품절)</b></span>
					            </c:otherwise>
					        </c:choose>
					        </a>
		                </div>
		                <div class="cart-cnt">
		                    <c:choose>
								<c:when test="${vo.getMCnt() eq 1}">
									<img id="minus-${vo.getPId() }" class="minus-btn" src="resources/img/frame-427321498.svg" />
								</c:when>
								<c:otherwise>
									<img id="minus-${vo.getPId() }" class="minus-btn" src="resources/img/frame-427321498_1.svg" />
								</c:otherwise>
							</c:choose>
							
							<c:choose>
								<c:when test="${vo.getPQuantity() >= 1}">
									<input type="number" class="product-cnt" name="cnt" id="cnt-${vo.getPId() }" value="${vo.getMCnt() }" disabled>
								</c:when>
								<c:otherwise>
									<input type="number" class="product-cnt" name="cnt" id="cnt-${vo.getPId() }" value="0" disabled>
								</c:otherwise>
							</c:choose>
		                    <c:choose>
								<c:when test="${vo.getPQuantity() <= vo.getMCnt()}">
									<img id="plus-${vo.getPId() }" class="plus-btn" src="resources/img/frame-427321499.svg" />
								</c:when>
								<c:otherwise>
									<img id="plus-${vo.getPId() }" class="plus-btn" src="resources/img/frame-427321499_1.svg" />
								</c:otherwise>
							</c:choose>
		                </div>
		                <div class="product-price" id="product-price-${vo.getPId() }" data-price="${vo.getPPrice() }" data-qty="${vo.getPQuantity() }" data-pid="${vo.getPId() }">
		                	<% // 재고량 부조시 0 원으로 출력 %>
		                	<c:choose>
								<c:when test="${vo.getPQuantity() >= 1}">
									${vo.getPPrice() }
								</c:when>
								<c:otherwise>
									0
								</c:otherwise>
							</c:choose>
		                	원
		                </div>
		            </div>
	            </c:forEach> 
            </div>   
            <div class="cart-actions">
                <input type="button" class="btn btn-outline-danger btn-sm" id="selectDelete" value="선택상품 삭제"> 
                <input type="button" class="btn btn-outline-danger btn-sm" id="soldOutDelete" value="품절상품 삭제">
            </div>
            <div class="cart-summary">
                <span class="total-product">총 주문 상품 </span><span class="total-product" id="total-product">0</span><span class="total-product">개</span>
            </div>
            <div class="cart-total">
                <div class="grid-container">
                	<div>
                    	<p class="amount" id='price-value'>0원</p><p class="sub-text">상품금액</p>
                    </div>
                    <p class="operator">+</p> 
                    <div>
                    	<p class="amount" id="delivery-value">3,500원</p><p class="sub-text">배송비</p>
                    </div>
                    <p class="operator">-</p>
                    <div>
                    	<p class="amount" id="discount-value">0원</p><p class="sub-text">상품 할인금액</p>
                    </div>
                    <p class="operator">=</p>
                    <div>
                    	<p class="amount" id="total-value">3,500원</p><p class="sub-text">총 주문금액</p>
                    </div>
                </div>
            </div>
            <div class="cart-order">
                <input type="button" id="order-btn" class="btn btn-success w-25 mb-3" value="주문하기" style="margin: 10px;">
            </div>
        </div>
    </div>
</body>
</html>