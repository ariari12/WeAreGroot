<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- UUID -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/uuid/8.1.0/uuidv1.min.js"></script>
<!-- 카카오 주소 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- TOSS 결제 -->
<script src="https://js.tosspayments.com/v1"></script>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


<style type="text/css">
	* {
		text-align: center;
		margin: 20px;
	}
</style>


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

		    let resultPrice = $('#price').val() * $('#cnt').val();
		    
		    
		    let jsons = {
		    		amount: resultPrice,
		    	    orderId: uuidv1(),
		    	    orderName: $("#product").val(),
		    	    customerName: $("#name").val(),
		    	    successUrl: successUrl,
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
	        	
	        	$('#addrs').val(data.address);
	        	$('#zipCode').val(data.zonecode);
	        }
		}).open();
	}
	
</script>


</head>

<body>

	<h2> order test page </h2>
	
	<div>
		<table class="table table-strpied">
			<tr>
				<th colspan="2">이름</th>
				<td> <input type="text" name="name" id="name" value="김철수" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">전화번호</th>
				<td> <input type="text" name="phone" id="phone" value="010-0000-0000" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">배송주소</th>
				<td> <input type="text" name="addrs" id="addrs" /> </td>
				<td> <input type="button" id="search" class="btn btn-primary" value="주소찾기" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">상세주소</th>
				<td> <input type="text" name="addrs2" id="addrs2" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">우편번호</th>
				<td> <input type="text" name="zipCode" id="zipCode" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">상품 이름</th>
				<td> <input type="text" name="product" id="product" value="모란" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">주문수량</th>
				<td> <input type="text" name="cnt" id="cnt" value="5" required/> </td>
			</tr>
			
			<tr>
				<th colspan="2">가격</th>
				<td> <input type="text" name="price" id="price" value="1234" required/> </td>
			</tr>
			
			<tr>
				<td colspan="3">
					<input type="button" name="pay" id="pay" class="btn btn-primary" value="결제하기" />
				</td>
			</tr>
			
		</table>
	
	</div>
	
	

</body>
</html>