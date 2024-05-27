<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="resources/css/cart.css" />
    
    <script type="text/javascript">
    	$(document).ready(function () {
    		
    		// 처음 로딩할때 천단위 콤마
    		$('.product-price').each(function() {
    			let priceString = $(this).text().trim();
    	        let cnt = parseInt($(this).closest('.cart-item').find('.product-cnt').val());
    	        let price = parseFloat(priceString.replace(/[^0-9]/g, ''));    	        
    	        if (!isNaN(price)) {
    	        	let formattedPrice = (price * cnt).toLocaleString() + '원';
    	            $(this).text(formattedPrice);
    	        }
    	    });
    		
    		// + 버튼 클릭
    		$('.plus-btn').click(function() {
    	        let productId = $(this).attr('id').split('-')[1];
    	        let qty = parseInt($('#product-price-' + productId).data('qty'));
    	        let cnt = parseInt($('#cnt-' + productId).val()) + 1;
    	        
    	        if (qty == 0) {
    	        	alert("품절 상품입니다.");
    	        	return;
    	        }
    	        
    	        // 재고량 부족
    	        if (cnt > qty) {
    	        	$('#cnt-' + productId).val(qty);
    	        	alert('재고량 부족');
    	        	return;
    	        }
    	        
    	        $('#cnt-' + productId).val(cnt);
    	        let price = $('#product-price-' + productId).data('price');        
    	        price = (cnt * price).toLocaleString();
    	        $('#product-price-' + productId).text(price + '원');
    	        calculateCheckedValues();
    	        
    	        $("#plus-" + productId).attr("src", cnt == qty ? "resources/img/frame-427321499.svg" : "resources/img/frame-427321499_1.svg");
    	        $("#minus-" + productId).attr("src", cnt <= 2 ? "resources/img/frame-427321498.svg" : "resources/img/frame-427321498_1.svg");
    	    });
    		
    		// - 버튼 클릭
    		$('.minus-btn').click(function() {
    	        let productId = $(this).attr('id').split('-')[1];
    	        let qty = parseInt($('#product-price-' + productId).data('qty'));
    	        let cnt = parseInt($('#cnt-' + productId).val()) - 1;
    	        
    	        // 주문수량 0개는 불가능
    	        // 주문하기 누를때 한번더 체크할것.
    	        
    	        if (qty == 0) {
    	        	alert("품절 상품입니다.");
    	        	return;
    	        }
    	        
    	        if (cnt <= 0) {
    	        	$('#cnt-' + productId).val(1);
    	        	alert("0 이하는 선택할수없습니다.");
    	        	return;
    	        }
    	        
    	        $('#cnt-' + productId).val(cnt);        
    	        let price = $('#product-price-' + productId).data('price');        
    	        price = (cnt * price).toLocaleString();
    	        $('#product-price-' + productId).text(price + '원');
    	        calculateCheckedValues();
    	        
    	        $("#plus-" + productId).attr("src", cnt == qty ? "resources/img/frame-427321499.svg" : "resources/img/frame-427321499_1.svg");
    	        $("#minus-" + productId).attr("src", cnt <= 2 ? "resources/img/frame-427321498.svg" : "resources/img/frame-427321498_1.svg");
    	    });
    		
    		// 체크박스 전체 체크/해제
    		$('#check-all').change(function() {
    	        $('.cart-checkbox').prop('checked', this.checked);
    	    });
    		
    		
    		function calculateCheckedValues() {
    			let totalValue = 0;
    	        let delivery = 3500;
    	        $('.cart-checkbox:checked').each(function() {
    	            let price = parseFloat($(this).closest('.cart-item').find('.product-price').text().replace(/[^0-9]/g, ''));
    	            if (!isNaN(price)) {
    	            	totalValue += price;
    	            }
    	        });
    	        
    	        // 5만원 이상 구매시 배송료 무료
    	        if (totalValue >= 50000) {
    	        	delivery = 0;
    	        }
    	        
    	        $('#delivery-value').text(delivery.toLocaleString() + '원');
    	        $('#total-value').text((totalValue + delivery).toLocaleString() + '원');
    	        $('#price-value').text(totalValue.toLocaleString() + '원');
    	    }
    		
    		$('.cart-checkbox').change(function() {
    	        calculateCheckedValues();
    	    });
		})
		
    </script>
    
</head>
<body>
    <div class="container">
        <h3 class="cart-text"><a href="./">홈</a>><a href="cart">장바구니</a></h3>
        <div class="cart-table">
            <div class="cart-header">
                <div style="flex: 0 0 5%; text-align: center;">
                    <input class="cart-checkbox form-check-input" type="checkbox" name="" id="check-all">
                </div>
                <div class="cart-th-left">상품정보</div>
                <div class="cart-th-center">수량</div>
                <div class="cart-th-center">주문금액</div>
            </div>
            <c:forEach var="vo" items="${cartVO }">
	            <div class="cart-item">
	                <div class="cart-item-th-cetner">
	                	<% // 재고가 남아있다면 checkbox를 생성 %>
	                	<c:if test="${vo.getPQuantity() >= 1}">
	                    	<input class="form-check-input cart-checkbox" type="checkbox" name="" id="check-${vo.getPId() }">
	                    </c:if>
	                </div>
	                <div class="cart-item-th-left">
	                
	                	<% // 프로젝트를 합치면서 주소가 바뀔 예정 수정해주어야 함. %>
	                	<a href="productTest?cmd=detail&pd_id=${vo.getPId() }">
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
							<c:when test="${vo.getPQuantity() eq vo.getMCnt()}">
								<img id="plus-${vo.getPId() }" class="plus-btn" src="resources/img/frame-427321499.svg" />
							</c:when>
							<c:otherwise>
								<img id="plus-${vo.getPId() }" class="plus-btn" src="resources/img/frame-427321499_1.svg" />
							</c:otherwise>
						</c:choose>
	                </div>
	                <div class="product-price" id="product-price-${vo.getPId() }" data-price="${vo.getPPrice() }" data-qty="${vo.getPQuantity() }">
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
            <div class="cart-actions">
                <input type="button" class="btn btn-outline-danger btn-sm" value="선택상품 삭제"> 
                <input type="button" class="btn btn-outline-danger btn-sm" value="품절상품 삭제">
            </div>
            <div class="cart-summary">
                <span style="font-size: 14px;">총 주문 상품 0개</span>
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
                <input type="button" class="btn btn-success w-25 mb-3" value="주문하기" style="margin: 10px;">
            </div>
        </div>
    </div>
</body>
</html>