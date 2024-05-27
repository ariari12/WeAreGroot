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

    // 카트 추가하기
    $('#addCart').on('click', function() { addCart(); })

    // 구매하기 버튼
    $('#addCart').on('click', function() { addCart(); })
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

// AJAX 로 장바구니에 담는 함수.
function addCart() {

}

// 구매하기로 넘어가는 함수.
function order() {

}
