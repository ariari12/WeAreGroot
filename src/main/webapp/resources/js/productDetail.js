$(document).ready(function() {
	
	// 처음 페이지로드 했을때 가격 천단위 콤마
	let p = parseInt($('#price').text()).toLocaleString();
	let tp = parseInt($('#totalPrice').text()).toLocaleString();
	$('#price').text(p + '원');
	$('#totalPrice').text(tp + '원');
	
    // 수량을 키보드로 변경하였다면
    $('#cnt').keyup(function() { updatePrice(''); });

    // 감소 버튼을 클릭했다면
    $('#minus').on('click', function() { updatePrice('-'); })

    // 추가 버튼을 클릭했다면
    $('#plus').on('click', function() { updatePrice('+'); })

    // 카트 추가하기
    $('#addCart').on('click', function() { addCart(); })

    // 구매하기 버튼
    $('#order').on('click', function() { order(); })
})

// STR값을 INT로 바꾸는 함수
function cleanAndConvertToInt(s) {
    return parseInt(s.replace(/,|개|원/g, ''));
}

// 가격 업데이트 해주는 함수
function updatePrice(oper) {
    // 가격, 수량 
    let price = cleanAndConvertToInt($('#price').text());
    let cnt = cleanAndConvertToInt($('#cnt').val());

    // 덧셈뺄셈
    if (oper == '+')      { cnt++; } 
    else if (oper == '-') { cnt--; }

    // 최소, 최대 선택값
    // 최대 선택값은 DB에 연동시 남은 재고량으로 바꿔줘야함.
    if (cnt < 1) { 
        alert('1개 이상부터 구입이 가능합니다.'); 
        cnt = 1; 
    } else if (parseInt(cnt) > parseInt(quantity)) { 
        alert('재고부족 남은 수량 : ' + quantity); 
        cnt = quantity; 
    }

    // cnt 값이 null 값이라면 0
    let totalPrice = (price * (cnt ? cnt : 0)).toLocaleString() + "원";

    // 문자의 길이에 따라 폰트 
    let fontSize = 18;
    if (totalPrice.length <= 9)       { fontSize = 28; } 
    else if (totalPrice.length == 10) { fontSize = 25; } 
    else if (totalPrice.length == 11) { fontSize = 23; } 
    else if (totalPrice.length >= 12) { fontSize = 20; }
    
    // 폰트 설정
    $('#totalPrice').css('font-size', fontSize + 'px');

    // 가격 반영.
    $('#cnt').val(cnt);
    $('#totalPrice').text(totalPrice);

    // +- 버튼 투명도 설정
    $("#minus").attr("src", cnt == 1 ? "resources/img/frame-427321498.svg" : "resources/img/frame-427321498_1.svg");
    $("#plus").attr("src", cnt == quantity ? "resources/img/frame-427321499.svg" : "resources/img/frame-427321499_1.svg");

}

// AJAX 로 장바구니에 담는 함수.
function addCart() {
	
	let urlParams = new URLSearchParams(window.location.search);
	let productId = urlParams.get('pd_id');
	let cnt = $('#cnt').val();
	
	// USERID 값을 가져와야함.
	// 임시용 데이터 9
	let memberId = 9;
	
	if (parseInt(cnt) > parseInt(quantity)) {
		Toast.fire({
			icon: 'error',
			title: '재고부족\n남은수량 : ' + quantity
		});
		return;
	}
	
	$.ajax({
		url: 'cart?cmd=addProduct',
		type: 'post',
		data: {
			mId: memberId,
			pId: productId,
			cnt: cnt,
		},
		success : function(data) {
			data = data.trim();
			
			if (data == 1) {
                Toast.fire({
                    icon: 'success',
                    title: '장바구니에 상품을 추가하였습니다.'
                });
			} else {
				Toast.fire({
	                icon: 'error',
	                title: '장바구니에 상품 추가를 실패하였습니다.'
                });
			}	
		}
	})
}

// 구매하기로 넘어가는 함수.
function order() {
	let urlParams = new URLSearchParams(window.location.search);
	let pId = urlParams.get('pd_id');
	let cnt = $('#cnt').val();
	window.location.href = './order?cmd=detail&pd_id=' + pId + '&cnt=' + cnt;
}

// 알림창
let Toast = Swal.mixin({
	toast: true,
	position: 'center-center',
	showConfirmButton: false,
	timer: 3000,
	timerProgressBar: true,
	didOpen: (toast) => {
		toast.addEventListener('mouseenter', Swal.stopTimer)
		toast.addEventListener('mouseleave', Swal.resumeTimer)
	}
})
