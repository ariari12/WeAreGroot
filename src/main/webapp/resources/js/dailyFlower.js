// 에러 에니메이션 함수.
function errorAnimate(errorText) {
	$('.flower_frame').css('display', 'block');
	$('.flower_frame').addClass('animate__animated animate__hinge');
	setTimeout(function() {
		$('.flower_frame').removeClass('animate__hinge');
		$('.flower_frame').html(errorText);
		$('.flower_frame').addClass('animate__fadeInUpBig');
	}, 2000);
}

$(document).ready(function() {

	// 파라미터받기
	let params = new URLSearchParams(window.location.search);
	let flowerNo = params.get('dataNo');
	console.log(flowerNo);

	$.ajax({
		url: '/moran/flower?cmd=callbackAction',
		type: 'get',
		data: {
			'dataNo': flowerNo
		},
		success: function(respones, status, request) {
			respones = respones.trim();
			console.log(respones);

			// 결과코드(0:실패, 1: 성공)
			resultCode = $(respones).find('resultCode').text();
			if (resultCode == 0) {
				let errorText = '\
                    <h2>4🌼4 ERROR</h2>\
                    <h5>-NOT FOUND-</h5>\
                    <hr>\
                    <h6>"잃어버린 디지털 정원의 희망"</h6>\
                    <h6 class="flower_info flower_error">404 에러는 은은하고 상쾌한 향기를 풍기며, 마치 사용자가 잘못된 주소를 입력하여 잃어버린 디지털 정원을 떠올리게 합니다. 이 향기는 새로운 경험을 찾아 나선 모험가들에게 용기를 줍니다.</h6>\
                    '
				errorAnimate(errorText);
				return;
			}

			// 꽃 데이터 변수에 저장
			let dataNo = $(respones).find('dataNo').text();
			let fMonth = $(respones).find('fMonth').text();
			let fDay = $(respones).find('fDay').text();
			let flowNm = $(respones).find('flowNm').text();
			// let fSctNm = $(respones).find('fSctNm').text();
			// let fEngNm = $(respones).find('fEngNm').text();
			let flowLang = $(respones).find('flowLang').text();
			let fContent = $(respones).find('fContent').text();
			let fUse = $(respones).find('fUse').text();
			let fGrow = $(respones).find('fGrow').text();
			let fType = $(respones).find('fType').text();
			let imgUrl1 = $(respones).find('imgUrl1').text();
			let imgUrl2 = $(respones).find('imgUrl2').text();
			let imgUrl3 = $(respones).find('imgUrl3').text();


			console.log("fContent : " + fContent);

			// 텍스트 변경
			$('#flower_date').text(flowerNo != null ? fMonth + '월 ' + fDay + '일' : '오늘의 꽃');
			$('#flower_name').text(flowNm);
			$('#flower_language').text('"' + flowLang + '"');
			$('#flower_content').text(fContent);

			$('#flower_habitat').text(fType);
			$('#flower_growing').text(fGrow);
			$('#flower_purpose').text(fUse);

			// 이미지 변경
			$('#flower_img1').attr('src', imgUrl1).attr('alt', flowNm + "이미지1");
			$('#flower_img2').attr('src', imgUrl2).attr('alt', flowNm + "이미지2");
			$('#flower_img3').attr('src', imgUrl3).attr('alt', flowNm + "이미지3");

			let rbg;
			if (dataNo >= 61 && dataNo <= 152) rbg = '#B43E5B'; // 봄
			else if (dataNo >= 153 && dataNo <= 244) rbg = '#258A8A'; // 여름
			else if (dataNo >= 245 && dataNo <= 335) rbg = '#CC6600'; // 가을
			else rbg = '#666666'; // 겨울

			// 글자색, 배경색 변경.
			$('.flower_text').css('color', rbg);
			$('body').css('background', rbg);

			// 데이터가 다 불러와지면 보여주기
			// $('.flower_frame').css('display', 'block');
			$('.flower_frame').fadeIn(1000);

		},
		error: function(respones, status, request) {
			// console.log('에러!');
			errorAnimate('<h2>ERROR</h2>');
		}
	})
})