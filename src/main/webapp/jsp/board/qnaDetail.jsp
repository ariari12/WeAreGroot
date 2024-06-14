<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>

<script type="text/javascript">
function showEditForm(cId, contents, bId, type) {
    var formId = 'editForm-' + cId;
    var existingForm = document.getElementById(formId);

    if (existingForm) {
        existingForm.style.display = 'block';
    } else {
        var formHtml = '<form action="comment" method="post" id="' + formId + '">' +
                       '<input type="hidden" name="cmd" value="commentModify">' +
                       '<input type="hidden" name="cId" value="' + cId + '">' +
                       '<input type="hidden" name="bId" value="' + bId + '">' +
                       '<input type="hidden" name="type" value="' + type + '">' +
                       '<textarea name="contents" cols="100" rows="4">' + contents + '</textarea>' +
                       '<button type="submit">수정</button>' +
                       '<button type="button" onclick="hideEditForm(\'' + formId + '\')">취소</button>' +
                       '</form>';

        var commentDiv = document.getElementById('comment-' + cId);
        var div = document.createElement('div');
        div.innerHTML = formHtml;
        commentDiv.appendChild(div);
    }
}

function hideEditForm(formId) {
    var form = document.getElementById(formId);
    if (form) {
        form.style.display = 'none';
    }
}

</script>


<link rel="stylesheet" href="resources/css/globals.css" />
<style type="text/css">
:root {
	--colors-light-green: rgba(118, 176, 156, 1);
	--colors-mint: rgba(140, 215, 144, 1);
}

.q-a {
	position: relative;
	width: 1920px;
	height: 3273px;
	background-color: #ffffff;
}

.q-a .view {
	height: 407px;
	top: 2866px;
	background-color: #ffffff;
	border-top-width: 1px;
	border-top-style: solid;
	border-color: #e4e4e4;
	position: absolute;
	width: 1920px;
	left: 0;
}

.q-a .text-wrapper {
	position: absolute;
	top: 56px;
	left: 150px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .div {
	position: absolute;
	top: 159px;
	left: 150px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .p {
	position: absolute;
	top: 159px;
	left: 1175px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-2 {
	position: absolute;
	top: 183px;
	left: 1175px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-3 {
	position: absolute;
	top: 183px;
	left: 150px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .UI-copyright {
	position: absolute;
	top: 253px;
	left: 150px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: transparent;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
}

.q-a .span {
	color: #202020;
}

.q-a .text-wrapper-4 {
	color: #20202080;
}

.q-a .text-wrapper-5 {
	position: absolute;
	top: 183px;
	left: 651px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #202020;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-6 {
	position: absolute;
	top: 127px;
	left: 150px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-7 {
	position: absolute;
	top: 127px;
	left: 1175px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-8 {
	position: absolute;
	top: 127px;
	left: 1290px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #ff0000;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-9 {
	position: absolute;
	top: 56px;
	left: 294px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-10 {
	position: absolute;
	top: 56px;
	left: 404px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .text-wrapper-11 {
	position: absolute;
	top: 56px;
	left: 583px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .frame {
	position: absolute;
	width: 1170px;
	height: 64px;
	top: 288px;
	left: 375px;
}

.q-a .frame-2 {
	display: inline-flex;
	align-items: center;
	gap: 16px;
	position: absolute;
	top: 0;
	left: 0;
}

.q-a .text-wrapper-12 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #202020;
	font-size: 28px;
	letter-spacing: -0.56px;
	line-height: normal;
	white-space: nowrap;
}

.q-a .line {
	position: relative;
	width: 1px;
	height: 20px;
	object-fit: cover;
}

.q-a .text-wrapper-13 {
	position: relative;
	width: fit-content;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.q-a .img {
	position: absolute;
	top: 64px;
	left: 0;
	width: 1170px;
	height: 1px;
}

.q-a .frame-wrapper {
	position: fixed;
	width: 1920px;
	height: 48px;
	top: 0;
	left: 0;
	background-color: #4d4d4d;
	z-index: 5;
}

.q-a .frame-3 {
	display: inline-flex;
	align-items: center;
	justify-content: flex-end;
	position: relative;
	top: 4px;
	left: 1285px;
}

.q-a .div-wrapper {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 8px 10px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .text-wrapper-14 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #ffffff;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .frame-4 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 5px;
	padding: 8px 10px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .vector {
	position: relative;
	width: 12px;
	height: 14px;
}

.q-a .view-2 {
	height: 62px;
	top: 392px;
	position: absolute;
	width: 1920px;
	left: 0;
}

.q-a .frame-5 {
	display: inline-flex;
	align-items: flex-start;
	position: relative;
	top: 1px;
	left: 374px;
}

.q-a .q-a-wrapper {
	display: flex;
	width: 578px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 18px 138px;
	position: relative;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-left: -1px;
	border-top-width: 1px;
	border-top-style: solid;
	border-right-width: 1px;
	border-right-style: solid;
	border-left-width: 1px;
	border-left-style: solid;
	border-color: #e4e4e4;
}

.q-a .text-wrapper-15 {
	position: relative;
	width: fit-content;
	margin-top: -0.5px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #00b267;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.q-a .frame-6 {
	display: flex;
	width: 598px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 18px 138px;
	position: relative;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-right: -1px;
	border: 1px solid;
	border-color: #e4e4e4;
}

.q-a .text-wrapper-16 {
	position: relative;
	width: 113px;
	height: 24px;
	margin-top: -0.5px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #20202080;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.q-a .frame-7 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 30px;
	position: absolute;
	top: 513px;
	left: 374px;
}

.q-a .frame-8 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 100px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .frame-9 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 20px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .frame-10 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 10px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .frame-11 {
	display: inline-flex;
	align-items: flex-start;
	gap: 10px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .text-wrapper-17 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #00b267;
	font-size: 30px;
	letter-spacing: 0;
	line-height: 40px;
	white-space: nowrap;
}

.q-a .text-wrapper-18 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 30px;
	letter-spacing: 0;
	line-height: 40px;
	white-space: nowrap;
}

.q-a .text-wrapper-19 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #20202080;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 23.2px;
	white-space: nowrap;
}

.q-a .text-wrapper-20 {
	position: relative;
	width: 1172px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 23.2px;
}

.q-a .frame-12 {
	display: inline-flex;
	align-items: flex-start;
	gap: 30px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .rectangle {
	position: relative;
	width: 371px;
	height: 371px;
	object-fit: cover;
}

.q-a .line-2 {
	position: relative;
	object-fit: cover;
	width: 1170px;
	height: 1px;
}

.q-a .frame-13 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 30px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .line-3 {
	position: relative;
	margin-top: -1px;
	object-fit: cover;
	width: 1170px;
	height: 1px;
}

.q-a .element {
	position: relative;
	width: 770px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 23.2px;
}

.q-a .frame-14 {
	display: inline-flex;
	align-items: flex-start;
	gap: 4px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .text-wrapper-21 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #00b267;
	font-size: 14px;
	letter-spacing: -0.28px;
	line-height: 14px;
	white-space: nowrap;
}

.q-a .rectangle-2 {
	position: relative;
	width: 14px;
	height: 14px;
}

.q-a .vector-2 {
	position: absolute;
	width: 12px;
	height: 11px;
	top: 2px;
	left: 1px;
}

.q-a .frame-15 {
	display: inline-flex;
	align-items: flex-start;
	gap: 4px;
	padding: 8px 10px;
	position: relative;
	flex: 0 0 auto;
	background-color: #ffffff;
	border-radius: 4px;
	overflow: hidden;
	border: 1px solid;
	border-color: #e4e4e4;
}

.q-a .text-wrapper-22 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 14px;
	letter-spacing: -0.28px;
	line-height: 14px;
	white-space: nowrap;
}

.q-a .view-3 {
	display: inline-flex;
	align-items: flex-start;
	gap: 4px;
	padding: 8px 10px;
	position: relative;
	flex: 0 0 auto;
	background-color: #ffffff;
	border-radius: 4px;
	overflow: hidden;
	border: 1px solid;
	border-color: #00b267;
}

.q-a .frame-16 {
	display: inline-flex;
	flex-direction: column;
	align-items: center;
	gap: 30px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .line-4 {
	position: relative;
	margin-top: -0.5px;
	width: 1170px;
	height: 1px;
}

.q-a .frame-17 {
	display: inline-flex;
	align-items: flex-start;
	gap: 20px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .frame-18 {
	position: relative;
	flex: 0 0 auto;
}

.q-a .frame-19 {
	display: inline-flex;
	align-items: flex-start;
	position: relative;
	flex: 0 0 auto;
}

.q-a .frame-20 {
	position: relative;
	width: 40px;
	height: 40px;
}

.q-a .text-wrapper-23 {
	position: absolute;
	top: 7px;
	left: 16px;
	color: #202020;
	font-size: 20px;
	letter-spacing: 0;
	line-height: normal;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	white-space: nowrap;
}

.q-a .text-wrapper-24 {
	position: absolute;
	top: 7px;
	left: 14px;
	opacity: 0.3;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 20px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.q-a .header {
	position: fixed;
	width: 1920px;
	height: 120px;
	top: 48px;
	left: 0;
}

.q-a .frame-21 {
	position: fixed;
	width: 1920px;
	height: 80px;
	top: 168px;
	left: 0;
	background-color: #ffffff;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-color: #e4e4e4;
}

.q-a .frame-22 {
	display: inline-flex;
	align-items: flex-start;
	position: absolute;
	top: 16px;
	left: 375px;
}

.q-a .frame-23 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px;
	position: relative;
	flex: 0 0 auto;
}

.q-a .text-wrapper-25 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020cc;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.q-a .frame-24 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px;
	position: relative;
	flex: 0 0 auto;
	border-bottom-width: 4px;
	border-bottom-style: solid;
	border-color: #00b267;
}

.q-a .text-wrapper-26 {
	position: relative;
	width: fit-content;
	margin-top: -4px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #00b267;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.q-a .ellipse {
	position: relative;
	width: 15px;
	height: 15px;
	background-color: #00b267;
	border-radius: 7.5px;
}

.q-a .frame-25 {
	display: inline-flex;
	align-items: flex-start;
	gap: 12px;
	padding: 8px 12px 8px 20px;
	position: absolute;
	top: 22px;
	left: 1082px;
	background-color: #ffffff;
	border-radius: 20px;
	overflow: hidden;
	border: 1px solid;
	border-color: #00b267;
}

.q-a .text-wrapper-27 {
	position: relative;
	width: 395px;
	height: 24px;
	margin-top: -1px;
	opacity: 0.2;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.q-a .union-wrapper {
	position: relative;
	width: 24px;
	height: 24px;
}

.q-a .union {
	position: absolute;
	width: 18px;
	height: 18px;
	top: 3px;
	left: 2px;
}

a:link {
	color: black;
}

a:visited {
	color: black;
}

.frame-wrapper a {
	color: white;
}
</style>
</head>
<body>
	<div class="q-a">
		<div class="view">
			<div class="text-wrapper">모란모란소개</div>
			<p class="div">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel :
				1234-5678</p>
			<p class="p">12345) 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
			<p class="text-wrapper-2">Fax : 02-123-4567 / E-mail:
				moranmoran@moran.com</p>
			<p class="text-wrapper-3">사업자등록번호 : 123-45-67890, 통신판매업신고 :
				2024-서울구구-3456</p>
			<p class="UI-copyright">
				<span class="span">모란모란은 통신판매중개자이며 통신판매의 거래당사자가 아닙니다. 따라서
					판매자가 등록한 상품•거래•가격 정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든 정보, 콘텐츠,
					UI 등에 대한 무단 복제 및 배포 등의 행위는 엄격히 금지됩니다.<br />
				</span> <span class="text-wrapper-4">Copyright MoranMoran Co. All
					Rights Reserved.</span>
			</p>
			<div class="text-wrapper-5">사업자정보확인 &gt;</div>
			<div class="text-wrapper-6">모란모란(주)</div>
			<div class="text-wrapper-7">고객센터</div>
			<div class="text-wrapper-8">1234-5678</div>
			<div class="text-wrapper-9">이용약관</div>
			<div class="text-wrapper-10">전자금융거래약관</div>
			<div class="text-wrapper-11">개인정보처리방침</div>
		</div>
		<div class="frame">
			<div class="frame-2">
				<div class="text-wrapper-12">커뮤니티</div>
				<img class="line" src="img/line-3.svg" />
				<p class="text-wrapper-13">모란모란의 사용자들과, 식물에 관한 다양한 주제로 소통해보세요</p>
			</div>
			<img class="img" src="img/line-2.svg" />
		</div>

		<c:choose>
			<c:when test="${not empty sessionScope.memberVO}">
				<div class="frame-wrapper">
					<div class="frame-3">
						<div class="div-wrapper">
							<div class="text-wrapper-14">
								<a href="/moran/member?cmd=myPageForm">마이페이지</a>
							</div>
						</div>
						<div class="div-wrapper">
							<div class="text-wrapper-14">
								<a href="/moran/member?cmd=logoutOk">로그아웃</a>
							</div>
						</div>
						<div class="frame-4">
							<div class="text-wrapper-14">장바구니</div>
						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="frame-wrapper">
					<div class="frame-3">
						<div class="div-wrapper">
							<div class="text-wrapper-14">
								<a href="/moran/member?cmd=loginForm">로그인</a>
							</div>
						</div>
						<div class="div-wrapper">
							<div class="text-wrapper-14">
								<a href="/moran/member?cmd=joinForm">회원가입</a>
							</div>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>


		<div class="view-2">
			<div class="frame-5">
				<div class="q-a-wrapper">
					<div class="text-wrapper-15">
						<a href="board">Q&amp;A 게시판</a>
					</div>
				</div>
				<div class="frame-6">
					<div class="text-wrapper-16">
						<a href="board?cmd=kh">노하우</a>
					</div>
				</div>
			</div>
		</div>
		<div class="frame-7">
			<div class="frame-8">
				<div class="frame-9">
					<div class="frame-10">
						<div class="frame-11">
							<div class="text-wrapper-17">Q.</div>
							<p class="text-wrapper-18">${boardVO.get('title') }</p>
						</div>
						<div class="frame-11">
							<div class="text-wrapper-19">${boardVO.get('nick') }</div>
							<div class="text-wrapper-19">${boardVO.get('regDate') }
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공감${boardVO.get('likeCnt') }
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 조회수${boardVO.get('viewCnt') }
							</div>
						</div>
					</div>
					<p class="text-wrapper-20">${boardVO.get('contents') }</p>
				</div>
				<div class="frame-12">
					<img src="./resources/img/board/${boardVO.get('biImg') }"
						onerror="this.style.display='none'" alt='' />
				</div>


				<svg width="1170" height="1" viewBox="0 0 1170 1" fill="none"
					xmlns="http://www.w3.org/2000/svg">
		  <line y1="0.5" x2="1170" y2="0.5" stroke="#E4E4E4" />
		  </svg>
				<!-- 게시글 수정 삭제 및 공감 -->
				<c:set var="bId" value="${boardVO.get('bId') }"></c:set>
				<c:set var="count" value="${boardVO.get('count') }"></c:set>
				<c:choose>
					<c:when test="${boardVO.get('mId') eq loginId }">

						<!-- 수정 -->
						<button type="button"
							onclick="location.href='<c:url value='/board?cmd=qnaModify&bId=${bId}' />'"
							style="border: 0; background-color: transparent;">
							<div class="frame-15">
								<div class="frame-11">
									<svg width="12" height="11" viewBox="0 0 12 11" fill="none"
										xmlns="http://www.w3.org/2000/svg">
														<path
											d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z"
											fill="#E4E4E4" />
														</svg>
								</div>
								<div class="text-wrapper-22">게시글 수정하기</div>
							</div>
						</button>

						<!-- 삭제 -->
						<button type="button"
							onclick="location.href='<c:url value='/board?cmd=qnaDelete&bId=${bId}' />'"
							style="border: 0; background-color: transparent;">
							<div class="frame-15">
								<div class="frame-11">
									<svg width="12" height="11" viewBox="0 0 12 11" fill="none"
										xmlns="http://www.w3.org/2000/svg">
														<path
											d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z"
											fill="#E4E4E4" />
														</svg>
								</div>
								<div class="text-wrapper-22">게시글 삭제하기</div>
							</div>
						</button>
					</c:when>

					<c:when test="${not empty loginId }">
						<c:choose>
							<c:when test="${boardLikeResult eq 'ok' }">
								<button type="button"
									onclick="location.href='<c:url value='/board?cmd=qnaModifyLikeCnt&bId=${bId}&likeResult=likeOk&count=${count }' />'"
									style="border: 0; background-color: transparent;">
									<div class="frame-15">
										<div class="frame-11">
											<svg width="12" height="11" viewBox="0 0 12 11" fill="none"
												xmlns="http://www.w3.org/2000/svg">
														<path
													d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z"
													fill="#E4E4E4" />
														</svg>
										</div>
										<div class="text-wrapper-22">게시글 공감하기</div>
									</div>
								</button>
							</c:when>
							<c:otherwise>
								<button type="button"
									onclick="location.href='<c:url value='/board?cmd=qnaModifyLikeCnt&bId=${bId}&likeResult=likeCancel&count=${count }' />'"
									style="border: 0; background-color: transparent;">
									<div class="view-3">
										<div class="frame-11">
											<svg width="12" height="11" viewBox="0 0 12 11" fill="none"
												xmlns="http://www.w3.org/2000/svg">
														<path
													d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z"
													fill="#00B368" />
														</svg>
										</div>
										<div class="text-wrapper-22">게시글 공감취소</div>
									</div>
								</button>
							</c:otherwise>
						</c:choose>
					</c:when>
				</c:choose>
				<!-- 게시글 공감 끝 -->
			</div>
			<div class="frame-9">
				<div class="frame-11">
					<div class="text-wrapper-17">A.</div>
					<div class="text-wrapper-18">${boardVO.get('count') }개의답변</div>
				</div>
				        <c:choose>
        <c:when test="${not empty loginId }">
        <form action="comment" method="get">
	        <input type="hidden" name="cmd" value="commentWrite">
	        <input type="hidden" name="bId" value="${boardVO.get('bId')}">
	        <input type="hidden" name="mId" value="${loginId}">
	        <input type="hidden" name="type" value="${boardVO.get('type')}">
	        <input type="hidden" name="count" value="${boardVO.get('count') }">
	        <textarea name="contents" id="contents" cols="150" rows="10"></textarea>
	        <div class="text-wrapper-22"><button type="submit">댓글작성</button></div>
    	</form>
    	</c:when>        
        </c:choose>
				<div class="frame-13">
					<svg width="1170" height="1" viewBox="0 0 1170 1" fill="none"
						xmlns="http://www.w3.org/2000/svg">
		  <line y1="0.5" x2="1170" y2="0.5" stroke="#E4E4E4" />
		  </svg>

					<!-- 답변하나 시작 -->
					<c:forEach var="commentVO" items="${commentList}">
						<c:set var="bId" value="${boardVO.get('bId') }"></c:set>
						<c:set var="type" value="${boardVO.get('type') }"></c:set>
						<c:set var="cId" value="${commentVO.get('cId') }"></c:set>
						<c:set var="count" value="${boardVO.get('count') }"></c:set>
						<c:set var="loginId" value="${loginId }"></c:set>
						<div class="frame-10">
							<div class="frame-11">
								<div class="text-wrapper-19">${commentVO.get('nick') }</div>
								<div class="text-wrapper-19">${commentVO.get('regDate') }</div>
							</div>
							<p class="element">${commentVO.get('contents') }</p>
							<div class="frame-14">
								<div class="text-wrapper-21">공감</div>
								<div class="frame-14">
									<div class="frame-11">
										<svg width="14" height="14" viewBox="0 0 14 14" fill="none"
											xmlns="http://www.w3.org/2000/svg">
											<path
												d="M13 6.90909C13 6.30364 12.5091 5.81818 11.9091 5.81818H8.46182L8.98546 3.32545C8.99636 3.27091 9.00182 3.21091 9.00182 3.15091C9.00182 2.92727 8.90909 2.72 8.76182 2.57273L8.18364 2L4.59455 5.58909C4.39273 5.79091 4.27273 6.06364 4.27273 6.36364V11.8182C4.27273 12.1075 4.38766 12.385 4.59225 12.5896C4.79683 12.7942 5.07431 12.9091 5.36364 12.9091H10.2727C10.7255 12.9091 11.1127 12.6364 11.2764 12.2436L12.9236 8.39818C12.9727 8.27273 13 8.14182 13 8V6.90909ZM1 12.9091H3.18182V6.36364H1V12.9091Z"
												fill="#00B368" />
										</svg>
									</div>
									<div class="text-wrapper-21">${commentVO.get('likeCnt') }</div>
								</div>
							</div>

							<!-- 공감한 답변인지 아닌지 로직 추가해야 함 -->
							<c:choose>
								<c:when test="${commentVO.get('mId') eq loginId }">
									<button type="button"
										onclick="location.href='<c:url value='/comment?cmd=commentDelete&cId=${cId}&bId=${bId}&type=${type}&count=${count }' />'"
										style="border: 0; background-color: transparent;">
										<div class="frame-15">
											<div class="frame-11">
												<div class="rectangle-2"></div>
												<img class="vector-2" src="img/vector-4.svg" />
											</div>
											<div class="text-wrapper-22">댓글삭제하기</div>
										</div>
									</button>

									<button type="button"
										onclick="showEditForm('${commentVO.get('cId')}', '${commentVO.get('contents')}', '${bId}', '${type}')"
										style="border: 0; background-color: transparent;">
										<div class="frame-15">
											<div class="frame-11">
												<div class="rectangle-2"></div>
												<img class="vector-2" src="img/vector-4.svg" />
											</div>
											<div class="text-wrapper-22">댓글수정하기</div>
										</div>
									</button>
								</c:when>

								<c:when test="${not empty loginId }">
									<c:choose>
										<c:when test="${commentVO.get('commentLikeResult') eq 'ok' }">
											<button type="button"
												onclick="location.href='<c:url value='/comment?cmd=commentModifyLikeCnt&cId=${cId}&commentLikeResult=likeOk&type=${type }&bId=${bId }&count=${count }' />'"
												style="border: 0; background-color: transparent;">
												<div class="frame-15">
													<div class="frame-11">
														<svg width="12" height="11" viewBox="0 0 12 11"
															fill="none" xmlns="http://www.w3.org/2000/svg">
														<path
																d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z"
																fill="#E4E4E4" />
														</svg>
													</div>
													<div class="text-wrapper-22">답변 공감하기</div>
												</div>
											</button>
										</c:when>
										<c:when test="${commentVO.get('commentLikeResult') eq 'no' }">
											<button type="button"
												onclick="location.href='<c:url value='/comment?cmd=commentModifyLikeCnt&cId=${cId}&commentLikeResult=likeCancel&type=${type }&bId=${bId }&count=${count }' />'"
												style="border: 0; background-color: transparent;">
												<div class="view-3">
													<div class="frame-11">
														<svg width="12" height="11" viewBox="0 0 12 11"
															fill="none" xmlns="http://www.w3.org/2000/svg">
														<path
																d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z"
																fill="#00B368" />
														</svg>
													</div>
													<div class="text-wrapper-22">답변 공감취소</div>
												</div>
											</button>
										</c:when>
									</c:choose>
								</c:when>
							</c:choose>
						</div>
						<svg width="1170" height="1" viewBox="0 0 1170 1" fill="none"
							xmlns="http://www.w3.org/2000/svg">
						<line y1="0.5" x2="1170" y2="0.5" stroke="#E4E4E4" />
						</svg>
					</c:forEach>
					<!-- 답변 하나 끝 -->

					<!-- 페이징 -->
					<!-- 					<div class="frame-16">
						<img class="line-4" src="img/line-1.svg" />
						<div class="frame-17">
							<img class="frame-18" src="img/frame-30.svg" />
							<div class="frame-19">
								<div class="frame-20">
									<div class="text-wrapper-23">1</div>
								</div>
								<div class="frame-20">
									<div class="text-wrapper-24">2</div>
								</div>
								<div class="frame-20">
									<div class="text-wrapper-24">3</div>
								</div>
							</div>
							<img class="frame-18" src="img/frame-35.svg" />
						</div>
					</div> -->
				</div>
			</div>
			<a href="main"><img class="header"
				src="resources/img/member/header.svg" /></a>
			<div class="frame-21">
				<div class="frame-22">
					<div class="frame-23">
						<div class="text-wrapper-25">
							<a href="main">홈</a>
						</div>
					</div>
					<div class="frame-24">
						<div class="text-wrapper-26">
							<a href="board">커뮤니티</a>
						</div>
					</div>
					<div class="frame-23">
						<div class="text-wrapper-25">
							<a href="product?cmd=list">스토어</a>
						</div>
					</div>
					<div class="frame-23">
						<div class="text-wrapper-25">공지</div>
					</div>
					<div class="frame-23">
						<div class="text-wrapper-25">
							<a href="event">이벤트</a>
						</div>
						<div class="ellipse"></div>
					</div>
					<div class="frame-23">
						<div class="text-wrapper-25">1:1 문의</div>
					</div>
				</div>
				<div class="frame-25">
					<p class="text-wrapper-27">상품 또는 식물, 커뮤니티 글 검색하기</p>
					<div class="union-wrapper">
						<img class="union" src="../../resources/img/member/union.svg" />
					</div>
				</div>
			</div>
		</div>
</body>
</html>