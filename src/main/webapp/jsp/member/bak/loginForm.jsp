<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="resources/css/globals.css" />
<style>
.div-wrapper {
	position: relative;
	width: 2100px;
	height: 1887px;
	background-color: #ffffff;
	overflow: hidden;
}

.div-wrapper .header {
	position: absolute;
	width: 1920px;
	height: 120px;
	top: 48px;
	left: 0;
}

.div-wrapper .frame {
	position: absolute;
	width: 2100px;
	height: 48px;
	top: 0;
	left: 0;
	background-color: #4d4d4d;
}

.div-wrapper .div {
	display: inline-flex;
	align-items: flex-start;
	position: relative;
	top: 4px;
	left: 1407px;
}

.div-wrapper .frame-2 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 8px 10px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #ffffff;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .view {
	position: absolute;
	width: 1920px;
	height: 407px;
	top: 1480px;
	left: 0;
	background-color: #ffffff;
	border-top-width: 1px;
	border-top-style: solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-2 {
	position: absolute;
	top: 56px;
	left: 150px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .p {
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

.div-wrapper .text-wrapper-3 {
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

.div-wrapper .text-wrapper-4 {
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

.div-wrapper .text-wrapper-5 {
	position: absolute;
	top: 183px;
	left: 150px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .UI-copyright {
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

.div-wrapper .span {
	color: #202020;
}

.div-wrapper .text-wrapper-6 {
	color: #20202080;
}

.div-wrapper .text-wrapper-7 {
	position: absolute;
	top: 183px;
	left: 651px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #202020;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-8 {
	position: absolute;
	top: 127px;
	left: 150px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-9 {
	position: absolute;
	top: 127px;
	left: 1175px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-10 {
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

.div-wrapper .text-wrapper-11 {
	position: absolute;
	top: 56px;
	left: 294px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-12 {
	position: absolute;
	top: 56px;
	left: 404px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-13 {
	position: absolute;
	top: 56px;
	left: 583px;
	opacity: 0.8;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .frame-3 {
	position: absolute;
	width: 2400px;
	height: 80px;
	top: 168px;
	left: 0;
	background-color: #ffffff;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-color: #e4e4e4;
}

.div-wrapper .frame-4 {
	display: inline-flex;
	align-items: flex-start;
	position: absolute;
	top: 16px;
	left: 375px;
}

.div-wrapper .frame-5 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-14 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020cc;
	font-size: 20px;
	text-align: center;
	line-height: normal;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .ellipse {
	position: relative;
	width: 15px;
	height: 15px;
	background-color: #00b267;
	border-radius: 7.5px;
}

.div-wrapper .frame-6 {
	display: flex;
	width: 470px;
	align-items: flex-start;
	gap: 12px;
	padding: 8px 12px 8px 20px;
	position: absolute;
	top: 22px;
	left: 1075px;
	background-color: #ffffff;
	border-radius: 20px;
	overflow: hidden;
	border: 1px solid;
	border-color: #00b267;
}

.div-wrapper .text-wrapper-15 {
	position: relative;
	width: 395px;
	height: 24px;
	margin-top: -1px;
	opacity: 0.2;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #202020;
	font-size: 16px;
	line-height: 24px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .union-wrapper {
	position: relative;
	width: 24px;
	height: 24px;
}

.div-wrapper .union {
	position: absolute;
	width: 18px;
	height: 18px;
	top: 3px;
	left: 2px;
}

.div-wrapper .text-wrapper-16 {
	position: absolute;
	top: 297px;
	left: 921px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #000000;
	font-size: 30px;
	text-align: center;
	line-height: 40px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .overlap-group {
	top: 388px;
	position: absolute;
	width: 400px;
	height: 60px;
	left: 760px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-17 {
	position: absolute;
	top: 18px;
	left: 25px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #20202080;
	font-size: 16px;
	line-height: 20px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .overlap {
	top: 468px;
	position: absolute;
	width: 400px;
	height: 60px;
	left: 760px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-18 {
	position: absolute;
	top: 627px;
	left: 1026px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #20202080;
	font-size: 16px;
	line-height: 20px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-19 {
	position: absolute;
	top: 861px;
	left: 840px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #00b267;
	font-size: 18px;
	text-align: center;
	line-height: 20px;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .frame-7 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px 148px;
	position: absolute;
	top: 902px;
	left: 760px;
	background-color: #00b267;
}

.div-wrapper .text-wrapper-20 {
	position: relative;
	width: 104px;
	height: 20px;
	margin-top: -1px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #ffffff;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-8 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px 148px;
	position: absolute;
	top: 548px;
	left: 760px;
	background-color: #20202033;
}

.div-wrapper .frame-9 {
	display: inline-flex;
	flex-direction: column;
	align-items: center;
	gap: 30px;
	position: absolute;
	top: 698px;
	left: 840px;
}

.div-wrapper .text-wrapper-21 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #20202080;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-10 {
	display: inline-flex;
	align-items: flex-start;
	gap: 30px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .ellipse-2 {
	position: relative;
	width: 60px;
	height: 60px;
	background-color: #ffd600;
	border-radius: 30px;
}

.div-wrapper .ellipse-3 {
	position: relative;
	width: 60px;
	height: 60px;
	background-color: #1aba00;
	border-radius: 30px;
}

.div-wrapper .ellipse-4 {
	position: relative;
	width: 60px;
	height: 60px;
	background-color: #2c99ff;
	border-radius: 30px;
}

.div-wrapper .line {
	top: 677px;
	position: absolute;
	width: 400px;
	height: 1px;
	left: 760px;
	object-fit: cover;
}

.div-wrapper .img {
	top: 841px;
	position: absolute;
	width: 400px;
	height: 1px;
	left: 760px;
	object-fit: cover;
}

.div-wrapper input[type="text"], .div-wrapper input[type="password"] {
	width: 400px;
	height: 60px;
	padding: 18px 25px;
	border: 1px solid #e4e4e4;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #20202080;
	font-size: 16px;
	line-height: 20px;
	letter-spacing: 0;
	position: absolute;
	left: 760px;
}

.div-wrapper input[type="text"] {
	top: 388px;
}

.div-wrapper input[type="password"] {
	top: 468px;
}

.div-wrapper input[type="text"]::placeholder, .div-wrapper input[type="password"]::placeholder
	{
	color: #20202080;
}
</style>
</head>
<body>
	<div class="div-wrapper">
		<img class="header" src="resources/img/member/header.svg" />
		<div class="frame">
			<div class="div">
				<div class="frame-2">
					<div class="text-wrapper">로그인</div>
				</div>
				<div class="frame-2">
					<div class="text-wrapper">회원가입</div>
				</div>
			</div>
		</div>
		<div class="view">
			<div class="text-wrapper-2">모란모란소개</div>
			<p class="p">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
			<p class="text-wrapper-3">12345) 서울특별시 모란구 모란동 123, Tel :
				1234-5678</p>
			<p class="text-wrapper-4">Fax : 02-123-4567 / E-mail:
				moranmoran@moran.com</p>
			<p class="text-wrapper-5">사업자등록번호 : 123-45-67890, 통신판매업신고 :
				2024-서울구구-3456</p>
			<p class="UI-copyright">
				<span class="span">모란모란은 통신판매중개자이며 통신판매의 거래당사자가 아닙니다. 따라서
					판매자가 등록한 상품•거래•가격 정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든 정보, 콘텐츠,
					UI 등에 대한 무단 복제 및 배포 등의 행위는 엄격히 금지됩니다.<br />
				</span> <span class="text-wrapper-6">Copyright MoranMoran Co. All
					Rights Reserved.</span>
			</p>
			<div class="text-wrapper-7">사업자정보확인 &gt;</div>
			<div class="text-wrapper-8">모란모란(주)</div>
			<div class="text-wrapper-9">고객센터</div>
			<div class="text-wrapper-10">1234-5678</div>
			<div class="text-wrapper-11">이용약관</div>
			<div class="text-wrapper-12">전자금융거래약관</div>
			<div class="text-wrapper-13">개인정보처리방침</div>
		</div>
		<div class="frame-3">
			<div class="frame-4">
				<div class="frame-5">
					<div class="text-wrapper-14">홈</div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">커뮤니티</div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">스토어</div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">공지</div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">이벤트</div>
					<div class="ellipse"></div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">1:1 문의</div>
				</div>
			</div>
			<div class="frame-6">
				<div class="text-wrapper-15">상품 또는 식물 검색하기</div>
				<div class="union-wrapper">
					<img class="union" src="resources/img/member/union.svg" />
				</div>
			</div>
		</div>
		<div class="text-wrapper-16">로그인</div>
		<form action="로그인처리URL" method="post">
			<input type="text" name="username" placeholder="아이디"> <input
				type="password" name="password" placeholder="비밀번호">
			<div class="text-wrapper-18">
				<a href="아이디비밀번호찾기URL">아이디/비밀번호 찾기</a>
			</div>
			<div class="text-wrapper-19">아직 모란모란의 회원이 아니라면?</div>
			<button type="submit" class="frame-8">
				<div class="text-wrapper-20">로그인</div>
			</button>
		</form>
		<a href="회원가입URL" class="frame-7">
			<div class="text-wrapper-20">회원가입하기</div>
		</a>
		<div class="frame-9">
			<p class="text-wrapper-21">SNS 간편 로그인 / 회원가입</p>
			<div class="frame-10">
				<div class="ellipse-2"></div>
				<div class="ellipse-3"></div>
				<div class="ellipse-4"></div>
			</div>
		</div>
		<img class="line" src="resources/img/member/line-12.svg" /> <img
			class="img" src="resources/img/member/line-13.svg" />
	</div>
</body>
</html>