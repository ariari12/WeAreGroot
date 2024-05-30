/**
 * product-detail
 */
$(document).ready(function() {
    
    // 수량을 키보드로 변경하였다면
    $('#cnt').keyup(function() { updatePrice(''); });

    // 감소 버튼을 클릭했다면
    $('#minus').on('click', function() { updatePrice('-'); })

    // 추가 버튼을 클릭했다면
    $('#plus').on('click', function() { updatePrice('+'); })

    // 세션 정보가 있을 때 카트 추가하기
    $('#addCart').on('click', function() { addCart(); })
    
    // 세션 정보가 없을 때 카트 추가하기
    $('#noCart').on('click', function() { noCart(); })

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
    } else if (cnt > 1000) { 
        alert('재고부족 남은 수량 : 1000'); 
        cnt = 1000; 
    }

    // cnt 값이 null 값이라면 0
    let totalPrice = (price * (cnt ? cnt : 0)).toLocaleString() + "원";

    // 문자의 길이에 따라 폰트 
    let fontSize = 18;
    if (totalPrice.length <= 9)       { fontSize = 30; } 
    else if (totalPrice.length == 10) { fontSize = 25; } 
    else if (totalPrice.length == 11) { fontSize = 23; } 
    else if (totalPrice.length >= 12) { fontSize = 20; }
    
    // 폰트 설정
    $('#totalPrice').css('font-size', fontSize + 'px');

    // 가격 반영.
    $('#cnt').val(cnt);
    $('#totalPrice').text(totalPrice);

    // +- 버튼 투명도 설정
    $("#minus").attr("src", cnt == 1 ? 
    	"resources/img/product_detail/minus.svg" : 
    	"resources/img/product_detail/minus_1.svg");
    $("#plus").attr("src", cnt == 1000 ? 
    	"resources/img/product_detail/plus.svg" : 
    	"resources/img/product_detail/plus_1.svg");

}


// 리뷰정보 가져오는 ajax
let review = (no) => {
	$.ajax({
        type: "post",
        url: "./product?cmd=detail&no=" + no + "&type=rev",
        dataType: "json",
        success: function (data) {
        	console.log("성공");
            console.log(data);
            
            productReview(data);
        },
        error: (data, status, err) => {
        	console.log("실패");
        	console.log(data);
        	console.log(err);
        }
    });
}


// 상품문의 정보 가져오는 ajax
let qnaInfo = (no) => {
	$.ajax({
        type: "post",
        url: "./product?cmd=detail&no=" + no + "&type=qna",
   		data: {"no" : no},
        dataType: "json",
        success: function (data) {
        	console.log("성공");
            console.log(data);
            console.log(data[0].cqaId);
            console.log("-----------------------");
			console.log("타입: " + typeof(data));
            
            
            for(let i=0; i<data.length; i++){
				console.log(data[i].hasOwnProperty("name"));
				console.log(data[i].hasOwnProperty("pqaParentId"));
				console.log("@@@@@@@@@@");
			}
            
            
            qaFormHTML(data);
            
        },
        error: (data, status, err) => {
        	console.log("실패");
        	console.log(data);
        	console.log(err);
        }
    });
}

function noCart() {
	viweMsg("장바구니는 로그인한 회원만 사용할 수 있습니다.");
}


// AJAX 로 장바구니에 담는 함수.
function addCart() {
	let urlParams = new URLSearchParams(window.location.search);
	let productId = urlParams.get('no');
	let cnt = $('#cnt').val();
	
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
	let pId = urlParams.get('no');
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