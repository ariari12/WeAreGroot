$(document).ready(function() {

	// 천단위 콤마, 수량체크
	$('.product-price').each(function() {
		let priceString = $(this).text().trim();
		let qty = parseInt($(this).data('qty'));
		let cntClass = $(this).closest('.cart-item').find('.product-cnt');
		let cnt = parseInt(cntClass.val());
		let price = parseFloat(priceString.replace(/[^0-9]/g, ''));

		// 재고량 보다 장바구니에 담긴것이 많을 경우.
		if (qty < cnt) {
			cntClass.val(qty);
			cnt = qty;
		}

		if (!isNaN(price)) {
			let formattedPrice = (price * cnt).toLocaleString() + '원';
			$(this).text(formattedPrice);
		}
	});

	// 주문하기 버튼
	$('#order-btn').click(function() {
		let order = 'order?cmd=detail';
		$('.cart-checkbox:checked').each(function() {
			let productId = $(this).attr('id').split('-')[1];
			if (productId != 'all') {
				let cnt = $('#cnt-' + productId).val();
				order += '&pd_id=' + productId + '&cnt=' + cnt;
			}
		})
		location.href = order + "&ordercode=1";
	})

	// 품절버튼
	$('#soldOutDelete').click(function() {
		let pdIds = [];
		$(".cart-item").each(function() {
			let qty = $(this).find('.product-price').data('qty');
			let pId = $(this).find('.product-price').data('pid');
			
			if (qty == 0) { pdIds.push(pId); }
		})
		deleteProduct(pdIds);
	})

	// 삭제버튼
	$('#selectDelete').click(function() {
		let pdIds = [];
		$('.checkboxs:checked').each(function() {
			let productId = $(this).attr('id').split('-')[1];
			pdIds.push(productId);
		})
		deleteProduct(pdIds);
	})

	// 추가 버튼 클릭
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

		$("#plus-" + productId).attr("src", cnt >= qty ? "resources/img/frame-427321499.svg" : "resources/img/frame-427321499_1.svg");
		$("#minus-" + productId).attr("src", cnt <= 1 ? "resources/img/frame-427321498.svg" : "resources/img/frame-427321498_1.svg");

		console.log(qty + " : " + cnt);
		changeCnt(productId, cnt >= qty ? qty : cnt);
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

		$("#plus-" + productId).attr("src", cnt >= qty ? "resources/img/frame-427321499.svg" : "resources/img/frame-427321499_1.svg");
		$("#minus-" + productId).attr("src", cnt <= 1 ? "resources/img/frame-427321498.svg" : "resources/img/frame-427321498_1.svg");
		changeCnt(productId, cnt >= qty ? qty - 1 : cnt);
	});

	// 체크박스 전체 체크/해제
	$('#check-all').change(function() {
		$('.cart-checkbox').prop('checked', this.checked);
	});

	function calculateCheckedValues() {
		let totalValue = 0;
		let totalProduct = 0;
		let checked = $('.cart-checkbox:checked').length;
		let checkedLength = $('.cart-checkbox').length;

		$('.cart-checkbox:checked').each(function() {
			let productId = $(this).attr('id').split('-')[1];
			let price = parseFloat($(this).closest('.cart-item').find('.product-price').text().replace(/[^0-9]/g, ''));
			if (!isNaN(price)) {
				totalValue += price;
				totalProduct++;
			}
		});

		// 5만원 이상 구매시 배송비 무료.
		let delivery = totalValue >= 50000 ? 0 : 3500;
		$('#check-all').prop('checked', checkedLength > checked ? false : true);
		$('#delivery-value').text(delivery.toLocaleString() + '원');
		$('#total-value').text((totalValue + delivery).toLocaleString() + '원');
		$('#price-value').text(totalValue.toLocaleString() + '원');
		$('#total-product').text(totalProduct);
	}

	$('.cart-checkbox').change(function() {
		calculateCheckedValues();
	});


	function changeCnt(pId, cnt) {
		// 가격 수량업데이트.
		$.ajax({
			url: 'cart?cmd=cntChange',
			type: 'POST',
			data: 'updateData=' + pId + ',' + cnt,
			success: function(resp) {
				console.log(resp);
			}
		})
	}

	// 선택, 품절데이터 삭제
	function deleteProduct(pdIds) {
		// 삭제할 데이터가 없음.
		if (pdIds.length == 0) {
			// console.log('데이터없음');
			return;
		}
		$.ajax({
			url: 'cart?cmd=deleteProduct',
			type: 'POST',
			data: 'productIds=' + pdIds,
			success: function(resp) {
				resp = parseInt(resp.trim());
				// 결과값이 1 이상이라면 정상처리.
				// 결과값은 DELETE 된 데이터의 수.
				if (resp >= 1) {
					$.ajax({
						url: 'cart?cmd=cartForm',
						type: 'GET',
						success: function(resp) {
							// cart-item 클래스의 내용을 전부삭제
							// 조회한 멤버의카트로 내용 추가.
							// 하단의상품 가격업데이트
							$(".cart-item").remove();
							$(".cart-list").html(resp.trim());
							calculateCheckedValues();
						}
					})
				} else {
					alert("정상적으로 처리 못함.");
				}
			}
		})
	}

	// 체크박스
	calculateCheckedValues();
})		