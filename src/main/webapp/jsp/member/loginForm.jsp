<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="resources/css/globals.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
.custom{
	top:100px
}
a {  	text-align: center;
		text-decoration: none; /* 링크의 밑줄 제거 */  
		color: inherit; /* 링크의 색상 제거 */
	}
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
	background: #00B368;
	border: none;
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

.text-wrapper-15 {
  position: relative;
  z-index: 1;
}

.text-wrapper-15 input[type="text"] {
  width: 100%;
  height: 100%;
  padding: 8px 12px;
  border: none;
  background-color: transparent;
  font-family: "Pretendard Variable-Medium", Helvetica;
  font-weight: 500;
  color: #202020;
  font-size: 16px;
  line-height: 24px;
  letter-spacing: 0;
}


</style>
<script>



$(document).ready(function() {
	$(".union-wrapper").click(() => {
        let keyword = $("#search").val();
        window.location = "./product?cmd=list&type=search&search=" + keyword;
    });
	
	 $("#findPwBtn").click(function() {
		 var name = $("#name").val();
		 var email = $("#findEmail").val();
	   
	   $.ajax({
	     type: "POST",
	     url: "/moran/member",
	     data: {
	       cmd: "findMemberPwOk",
	       name: name,
	       email: email
	     },
	     success: function(response) {
	       // 서버 응답 처리
	       console.log(response);
	       if (response == "emptyMember") {
		        /* Swal.fire({
		            icon: 'warning',                         // Alert 타입
		            title: '비밀번호를 찾을 수 없습니다',         // Alert 제목
		            text: '비밀번호 찾기에 실패했습니다. 다시 시도해주세요.',  // Alert 내용
		        }, function() {
		    		   $("#findModal").modal("hide");
		    		   location.reload();
		    }); */
	    	   
	    	    alert("비밀번호 찾기에 실패했습니다. 다시 시도해주세요.", function() {
	    		   $("#findModal").modal("hide");
	    		   location.reload();
	    		 });
	    	   
	       } else {
	    	   alert("비밀번호가 이메일로 전송되었습니다.", function() {
	    		   $("#findModal").modal("hide");
	    		   location.reload();
	    		 });	         
	       }
	     },
	     error: function() {
	    	 alert("비밀번호 찾기 요청에 실패했습니다.", function() {
	    		  $("#findModal").modal("hide");
	    		  location.reload();
	    		});
	     }
	   });
	 });
	});
</script>
</head>
<body>	
	<%-- <c:if test="${not empty requestScope.notMember}">
		<script>alert("${requestScope.notMember}");</script>
	</c:if> --%>
	<div class="div-wrapper">
		<a href="main"><img class="header" src="resources/img/member/header.svg" /></a>
		<div class="frame">
			<div class="div">
				<div class="frame-2">
					<div class="text-wrapper">
						<a href="/moran/member?cmd=loginForm">로그인</a>
					</div>
				</div>
				<div class="frame-2">
					<div class="text-wrapper">
						<a href="/moran/member?cmd=joinForm">회원가입</a>
					</div>
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
					<div class="text-wrapper-14"><a href="main">홈</a></div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14"><a href="board">커뮤니티</a></div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14"><a href="product?cmd=list">스토어</a></div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">공지</div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14"><a href="event">이벤트</a></div>
					<div class="ellipse"></div>
				</div>
				<div class="frame-5">
					<div class="text-wrapper-14">1:1 문의</div>
				</div>
			</div>
			<div class="frame-6">				
				<input id="search" type="text" placeholder="상품 또는 식물 검색하기" style="z-index: 5; left:50px; top:-10px; outline: none; border-width: 0;"/>				
				<div class="union-wrapper">
					<img class="union" src="resources/img/member/union.svg" />
				</div>
			</div>
		</div>
		<div class="text-wrapper-16">로그인</div>
		<form action="/moran/member" method="post" >
				<input type="text" name="email" placeholder="아이디" id="email" required>
				<input type="password" type="password" name="pw" id="password"
									placeholder="비밀번호" minlength="6" required>
			
			<div class="text-wrapper-18">				
				<button type="button" data-bs-toggle="modal" data-bs-target="#findModal" style= "border: 0; background-color: transparent; color: #20202080;" >
  						비밀번호 찾기
				</button>			
			</div>
			<div class="text-wrapper-19">아직 모란모란의 회원이 아니라면?</div>
			<input type="hidden" name="cmd" value="loginOk" />
			<button type="submit" class="frame-8"><div class="text-wrapper-20">로그인</div></button>
		</form>
		<a href="/moran/member?cmd=joinForm" class="frame-7">
			<div class="text-wrapper-20">회원가입하기</div>
		</a>
		<div class="frame-9">
			<p class="text-wrapper-21"><a href="">SNS 간편 로그인</a> / <a href="/moran/member?cmd=joinForm">회원가입</a></p>
			<div class="frame-10">
				<div class="ellipse-2"></div>
				<div class="ellipse-3"></div>
				<div class="ellipse-4"></div>
			</div>
		</div>
		<img class="line" src="resources/img/member/line-12.svg" /> <img
			class="img" src="resources/img/member/line-13.svg" />
	</div>

<!-- 비밀번호 찾기 모달 -->	
 <div class="modal fade" id="findModal" tabindex="-1" aria-labelledby="findModalLabel" aria-hidden="true">
 <div class="modal-dialog">
   <div class="modal-content">
     <div class="modal-header">
       <h5 class="modal-title" id="findModalLabel">아이디 비밀번호 찾기</h5>
       <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
     </div>
     <div class="modal-body">
       <div class="mb-3">
         <label for="name" class="form-label">이름</label>
         <input type="text" class="form-control" id="name" name="name" required>
       </div>
		<div class="mb-3">
		  <label for="findEmail" class="form-label">이메일</label>
		  <input type="email" class="form-control" id="findEmail" name="findEmail" required>
		</div>
     </div>
     <div class="modal-footer">
       <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
       <button type="button" class="btn btn-primary" id="findPwBtn">비밀번호 찾기</button>
     </div>
   </div>
 </div>
</div>
</body>
</html>