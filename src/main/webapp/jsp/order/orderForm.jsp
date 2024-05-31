<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>모란모란 - 주문</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<!-- 카카오 주소 -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!-- TOSS 결제 -->
	<script src="https://js.tosspayments.com/v1"></script>

	<!-- UUID -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/uuid/8.1.0/uuidv4.min.js"></script>
	
    <style>
    	a {
    		text-decoration-line: none;
    		color: #000;
    	}
    
        .order-summary {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 5px;
        }
        .order-item {
            border: 1px solid #dee2e6;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .payment-section {
            padding: 20px;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            background-color: #f8f9fa;
        }
        .btn-success {
            width: 100%;
        }

        img {
            width: 100px;
            height: 100px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h3><a href="./main">홈</a>>결제하기</h3>
        <div class="row">
        	
        	<% // 총 상품값, 할인가격, 배달비 변수 %>
        	<c:set var="totalPrice" value="0" />
        	<c:set var="totalDiscount" value="0" />
        	<c:set var="delivery" value="3500" />
        
            <!-- 주문 상품 정보 -->
            <div class="col-md-12">
                <h4>주문 상품 정보</h4>
                <div style="overflow:auto; height:300px;">      
                <c:forEach var="product" items="${productList}">
                	<c:if test="${product.getPQuantity() ne 0}">
		                <div class="order-item d-flex mb-3" data-cnt="${product.getCnt()}" data-pid="${product.getPId()}">
		                    <img src="${product.getImg() }" alt="${product.getPName()}" class="mr-3">
		                    <div>
		                        <div>${product.getPName()}</div>
		                        <div>${product.getCnt()}개</div>
		                        <div><del><fmt:formatNumber value="${product.getPPrice() * product.getCnt()}" type="number" maxFractionDigits="0" /></del>원</div>    
		                        <% // 할인 계산 %>
		                        <c:set var="discountRate" value="${product.PDcrate / 100}" />
		    					<c:set var="discountedPrice" value="${product.PPrice * (1 - discountRate) * product.getCnt()}" />		                        
		                        <div><fmt:formatNumber value="${discountedPrice}" type="number" maxFractionDigits="0" />원</div>
		                        <c:set var="totalDiscount" value="${product.getPPrice() * product.getCnt() - discountedPrice + totalDiscount}" />
		                        <c:set var="totalPrice" value="${product.getPPrice() * product.getCnt() + totalPrice}" />
		                    </div>
		                </div>
		        	</c:if>
                </c:forEach>
                </div>
            </div>
        </div>
        
        <div class="row mt-3">
            <!-- 왼쪽: 주문자 정보 및 주문 요약 -->
            <div class="col-md-3">
                <!-- 주문자 정보 -->
                <div class="order-summary">
                    <h4>주문자 정보</h4>
                    <div class="form-group">
                        <label for="orderName">이름</label>
                        <input type="text" class="form-control" id="orderName" placeholder="이름" value="${memverVO.name }">
                    </div>
                    <div class="form-group">
                        <label for="orderPhone">연락처</label>
                        <input type="text" class="form-control" id="orderPhone" placeholder="연락처" value="${memverVO.phone }">
                    </div>
                </div>
    
                <!-- 주문 요약 -->
                <div class="order-summary mt-4">
                    <h4>주문 요약</h4>
                    <p>상품가격: <fmt:formatNumber value="${totalPrice}" type="number" maxFractionDigits="0" />원</p>
                    
                    <c:if test="${totalPrice - totalDiscount >= 50000}">
                    	<c:set var="delivery" value="0" />
                    </c:if>
                    
                    <p>배송비: <fmt:formatNumber value="${delivery}" type="number" maxFractionDigits="0" />원</p>
                    <p>상품 할인금액: -<fmt:formatNumber value="${totalDiscount}" type="number" maxFractionDigits="0" />원</p>
                    <c:set var="result" value="${totalPrice - totalDiscount + delivery}" />
                    <p><strong>총 주문금액: <fmt:formatNumber value="${result}" type="number" maxFractionDigits="0" />원</strong></p>
                    <button class="btn btn-success" name="pay" id="pay">결제하기</button>
                </div>
            </div>
    
            <!-- 오른쪽: 배송 정보 -->
            <div class="col-md-9">
                <div class="order-summary">
                    <h4>배송 정보</h4>
                    <div class="form-group">
                        <label for="receiverName">수령인</label>
                        <input type="text" class="form-control" id="receiverName" placeholder="수령인" value="${memverVO.name }">
                    </div>
                    <div class="form-group">
                        <label for="receiverPhone">연락처</label>
                        <input type="text" class="form-control" id="receiverPhone" placeholder="연락처" value="${memverVO.phone }">
                    </div>
                    <div class="form-group">
                        <label for="zipCode">우편번호</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="zipCode" placeholder="우편번호" value="${memverVO.addressVO.zipcode }">
                            <div class="input-group-append">
                                <input type="button" class="btn btn-outline-secondary" id="search" value="주소찾기" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address">주소</label>
                        <input type="text" class="form-control" id="address" placeholder="주소" value="${memverVO.addressVO.addr1 }">
                    </div>
                    <div class="form-group">
                        <label for="addressDetail">상세주소</label>
                        <input type="text" class="form-control" id="addressDetail" placeholder="상세주소" value="${memverVO.addressVO.addr2 }">
                    </div>
                    <div class="form-group">
                        <label for="deliveryMemo">배송메모</label>
                        <select class="form-control" id="deliveryMemo">
                            <option>배송메모를 선택해 주세요.</option>
                            <option>부재 시 경비실에 맡겨주세요.</option>
                            <option>부재 시 문 앞에 놓아주세요.</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div style="margin: 70px;"></div>
    
    <script type="text/javascript">
		// 카카오지도
		$(document).ready(function () {
			$('#search').on('click', function () {
				openKakaoPostCode();
			})
			$('#pay').on('click', function () {
				let tossPayments = TossPayments("test_ck_5OWRapdA8ddAKn7MMyAA8o1zEqZK");
			    let successUrl = window.location.origin + "/moran/payment?result=success";
			    let failUrl = window.location.origin + "/moran/payment?result=fail";
			    let orderId = new Date().getTime();	
			    let amount = Math.floor('${result}');
			    let uuid = uuidv4();
			    let cnt = '${product.getCnt()}';
			    url = '';
			    
			    const orderItems = document.querySelectorAll('.order-item');
			    const cntValues = Array.from(orderItems).map(item => item.getAttribute('data-cnt'));
			    const pIdValues = Array.from(orderItems).map(item => item.getAttribute('data-pid'));
			    console.log(cntValues);
			    console.log(pIdValues);
			    
			    
			    for (let i = 0; i < cntValues.length; i++) {
			    	url += "&pd_id=" + pIdValues[i] + "&cnt=" + cntValues[i];
			    }
			    
			    url += '&receiverName=' + $('#receiverName').val();
			    url += '&receiverPhone=' + $('#receiverPhone').val();
			    url += '&zipCode=' + $('#zipCode').val();
			    url += '&address=' + encodeURI($('#address').val());
			    url += '&addressDetail=' + encodeURI($('#addressDetail').val());
			    url += '&deliveryMemo=' + encodeURI($('#deliveryMemo').val());
			    
			    let params = new URLSearchParams(window.location.search);
				let orderCode = params.get('ordercode')? 1:0;
			    
			    let jsons = {
			    		amount: amount,
			    	    orderId: uuid,
			    	    orderName: '모란모란 꽃상품',
			    	    customerName: '${memverVO.name}',
			    	    successUrl: successUrl + url + "&ordercode=" + orderCode,
			    	    failUrl: failUrl,
			    	};
			    
			    tossPayments.requestPayment('카드', jsons).catch(function (error) {
			    	if (error.code === "USER_CANCEL") {
			    		alert("사용자가 취소했습니다.");
			    	} else {
			    		alert(error.message);
			    	}
			    });
			});
		})
		
		// 카카오 주소
		function openKakaoPostCode() {
			new daum.Postcode({
		        oncomplete: function(data) {
		        	console.log(data);
		        	$('#address').val(data.address);
		        	$('#zipCode').val(data.zonecode);
		        }
			}).open();
		}
	</script>
    
    
</body>
</html>