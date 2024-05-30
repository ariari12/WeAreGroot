<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/globals.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
a {
	text-align: center;
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
	z-index: 1;
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
	letter-spacing: 0;
	line-height: 24px;
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
	color: #202020;
	font-size: 20px;
	line-height: 24px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
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
	letter-spacing: 0;
	line-height: 24px;
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
	letter-spacing: 0;
	line-height: 24px;
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
	letter-spacing: 0;
	line-height: 24px;
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
	letter-spacing: 0;
	line-height: 24px;
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
	letter-spacing: 0;
	line-height: 24px;
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
	letter-spacing: 0;
	line-height: 24px;
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
	letter-spacing: 0;
	line-height: 24px;
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
	z-index: 1;
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
	letter-spacing: 0;
	line-height: normal;
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
	letter-spacing: 0;
	line-height: 24px;
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
	left: 908px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #000000;
	font-size: 30px;
	text-align: center;
	letter-spacing: 0;
	line-height: 40px;
	white-space: nowrap;
}

.div-wrapper .line {
	top: 424px;
	position: absolute;
	width: 770px;
	height: 1px;
	left: 575px;
	object-fit: cover;
}

.div-wrapper .img {
	top: 949px;
	position: absolute;
	width: 770px;
	height: 1px;
	left: 575px;
	object-fit: cover;
}

.div-wrapper .text-wrapper-17 {
	position: absolute;
	top: 394px;
	left: 575px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #e4e4e4;
	font-size: 14px;
	text-align: center;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-7 {
	display: flex;
	width: 130px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px 0px;
	position: absolute;
	top: 755px;
	left: 1171px;
	background-color: #d2d2d2;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-18 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	margin-left: 10px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #ffffff;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
	background-color: #d2d2d2;
	border: 1px solid;
	border-color: #e4e4e4;
	padding: 10px 37px;
	position: absolute;
}

.div-wrapper .frame-8 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px 37px;
	position: absolute;
	top: 515px;
	left: 1171px;
	background-color: #d2d2d2;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .frame-9 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px 37px;
	position: absolute;
	top: 695px;
	left: 1171px;
	background-color: #d2d2d2;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-19 {
	position: absolute;
	top: 357px;
	left: 818px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #00b267;
	font-size: 14px;
	text-align: center;
	letter-spacing: 0;
	line-height: normal;
}

.div-wrapper .frame-10 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 815px;
	left: 595px;
}

.div-wrapper .text-wrapper-20 {
	position: relative;
	width: 130px;
	height: 20px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-11 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px;
	position: relative;
	flex: 0 0 auto;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-21 {
	position: relative;
	width: 380px;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #00000033;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
}

.div-wrapper .frame-12 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 755px;
	left: 595px;
}

.div-wrapper .frame-13 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 695px;
	left: 595px;
}

.div-wrapper .frame-14 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 635px;
	left: 595px;
}

.div-wrapper .frame-15 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 575px;
	left: 595px;
}

.div-wrapper .frame-16 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 515px;
	left: 595px;
}

.div-wrapper .frame-17 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 455px;
	left: 595px;
}

.div-wrapper .frame-18 {
	display: inline-flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 875px;
	left: 595px;
}

.div-wrapper .frame-19 {
	display: inline-flex;
	align-items: flex-start;
	gap: 11px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-20 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px 83px;
	position: relative;
	flex: 0 0 auto;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-22 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	opacity: 0.2;
	color: #000000;
	font-size: 16px;
	line-height: 20px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	letter-spacing: 0;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-23 {
	position: absolute;
	top: 979px;
	left: 595px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.div-wrapper .frame-21 {
	display: inline-flex;
	align-items: flex-start;
	gap: 13px;
	position: absolute;
	top: 980px;
	left: 760px;
}

.div-wrapper .rectangle {
	position: relative;
	width: 24px;
	height: 24px;
	background-color: #ffffff;
	border: 2px solid;
	border-color: #00b267;
}

.div-wrapper .text-wrapper-24 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #00b267;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.div-wrapper .frame-22 {
	display: inline-flex;
	align-items: flex-start;
	gap: 13px;
	position: absolute;
	top: 1034px;
	left: 760px;
}

.div-wrapper .rectangle-2 {
	position: relative;
	width: 24px;
	height: 24px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #787878;
}

.div-wrapper .text-wrapper-25 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-26 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #00b267;
	font-size: 14px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.div-wrapper .frame-23 {
	display: inline-flex;
	align-items: flex-start;
	gap: 13px;
	position: absolute;
	top: 1078px;
	left: 760px;
}

.div-wrapper .frame-24 {
	display: inline-flex;
	align-items: flex-start;
	gap: 13px;
	position: absolute;
	top: 1122px;
	left: 760px;
}

.div-wrapper .frame-25 {
	display: inline-flex;
	align-items: flex-start;
	gap: 13px;
	position: absolute;
	top: 1166px;
	left: 760px;
}

.div-wrapper .frame-26 {
	display: inline-flex;
	align-items: flex-start;
	gap: 13px;
	position: absolute;
	top: 1210px;
	left: 760px;
}

.div-wrapper .frame-16 {
	display: flex;
	align-items: center;
	gap: 35px;
	position: absolute;
	top: 515px;
	left: 595px;
}

.div-wrapper .frame-16 input[type="email"] {
	flex: 1;
}

.div-wrapper .frame-16 .frame-8 {
	margin-left: 10px;
}

.div-wrapper form {
	position: relative;
	height: 100%;
}

.div-wrapper form #submitBtn {
	position: absolute;
	bottom: 500px;
	left: 50%;
	transform: translateX(-50%);
	padding: 10px 20px;
	background-color: #00b267;
	color: #ffffff;
	font-size: 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

</style>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script>
	

	$(()=>{

		
		//유효성 검사 함수
		function validateForm() {
		    var form = document.getElementById("joinForm");
		    if (form.checkValidity() === false) {
		      event.preventDefault();
		      event.stopPropagation();
		      
		        Swal.fire({
		            icon: 'warning',                         // Alert 타입
		            title: '회원가입 실패',         // Alert 제목
		            text: '회원가입 양식을 지켜주세요',  // Alert 내용
		        });
		      
		      
		      // alert("회원가입 양식을 지켜주세요");
		      return false;
		    }
		    return true;
		  }
		
		
		$("#verifyEmailBtn").click(function(){
			event.preventDefault(); //기본제출 동작 막기
			
            var email = $("#email").val();
            $("#emailCheck").val(email);
                     
            if(email != ""){
            	$("#verifyEmailBtn").attr("disabled",true);   
                $.ajax({
                    type : "POST",
                    url : "/moran/member",
                    data : {
                        cmd : "emailOk",
                        email : email
                    },
                    success : function(data){
                    	data = data.trim();
                    	if (data == "emailDuplicated") {
            		        Swal.fire({
            		            icon: 'error',              // Alert 타입
            		            title: '회원가입 인증 실패',         // Alert 제목
            		            text: '이미 가입된 이메일입니다. 다른 이메일을 사용해주세요.',  // Alert 내용
            		        });
                    		//alert("이미 가입된 이메일입니다. 다른 이메일을 사용해주세요.");
                    		$("#verifyEmailBtn").attr("disabled",false);
                    	}else{
                    		Swal.fire({
            		            icon: 'success',              // Alert 타입
            		            title: '회원가입 인증 성공',         // Alert 제목
            		            text: '이메일 인증번호가 전송이 완료되었습니다',  // Alert 내용
            		        });
                    		//alert("이메일 인증번호가 전송이 완료되었습니다");                    		                    		
                    		$("#verifyEmailBtn").attr("disabled",false);
                    	}                    	                    	
                    	
                    },                    
                    error : function(){
                    	Swal.fire({
        		            icon: 'error',              // Alert 타입
        		            title: '회원가입 인증 요청 실패',         // Alert 제목
        		            text: '이메일 인증 요청에 실패하였습니다. 다시 시도해주세요',  // Alert 내용
        		        });
                        //alert("이메일 인증 요청에 실패하였습니다. 다시 시도해주세요")
                        $("#verifyEmailBtn").attr("disabled",false);
                    }
                });
            }
        });
		
		$("#emailCodeBtn").click(function(){
			var emailCode = $("#emailCode").val();
			console.log("emailCode = "+emailCode);
			if(emailCode != ""){
				$.ajax({
					type : "POST",
					url : "/moran/member",
					data : {
						cmd : "emailCodeOk",
						emailCode : emailCode
					},
					success : function(data){
						if(data == "verifyEmailMatch"){
							Swal.fire({
	        		            icon: 'success',              // Alert 타입
	        		            title: '이메일 인증 성공',         // Alert 제목
	        		            text: '인증되었습니다',  // Alert 내용
	        		        });
							//alert("인증되었습니다");
						}else if(data == "verifyEmailMismatch"){
							Swal.fire({
	        		            icon: 'error',              // Alert 타입
	        		            title: '이메일 인증 실패',         // Alert 제목
	        		            text: '이메일 인증번호가 일치하지 않습니다',  // Alert 내용
	        		        });
							//alert("이메일 인증번호가 일치하지 않습니다");
						}
					},
					error : function(){
						Swal.fire({
        		            icon: 'error',              // Alert 타입
        		            title: '이메일 인증번호 요청이 실패',         // Alert 제목
        		            text: '이메일 인증번호 요청이 실패하였습니다',  // Alert 내용
        		        });
						//alert("이메일 인증번호 요청이 실패하였습니다");
					}
				});
			}
		});
		

	  	$("#submitBtn").click(function(event) {
	  		event.preventDefault(); // 기본 제출 동작 막기
			if(validateForm()){
			    var form = $("#joinForm");
			    var data = form.serialize(); //직렬화 방식으로 보내 예시로 "username=john&email=john@example.com" 이런 형태로 Content-Type이 application/x-www-form-urlencode
			    $.ajax({
			      type: "post",		      
			      url: "/moran/member",
			      data: data,
			      success: function(response) {
			        // 서버 응답 처리
			        console.log(response);
			        if(response == "success"){		        	
				        window.location.href="main";
				        Swal.fire({
        		            icon: 'success',              // Alert 타입
        		            title: '회원가입 성공',         // Alert 제목
        		            text: 'ㅊㅋ',  // Alert 내용
        		        });
				        //alert("회원가입 성공");
			        }else{
			        	Swal.fire({
        		            icon: 'warning',              // Alert 타입
        		            title: '회원가입 양식을 지켜주세요',         // Alert 제목
        		            text: '좋은말로 할 떄',  // Alert 내용
        		        });
				        //alert("회원가입 양식을 지켜주세요");
			        }		        
			      },
			      error : function(){
			    	  Swal.fire({
      		            icon: 'error',              // Alert 타입
      		            title: '회원가입 실패',         // Alert 제목
      		            text: '회원가입 요청에 실패하였습니다',  // Alert 내용
      		        });
						//alert("회원가입 요청에 실패하였습니다");
				}
			   });
			}
		 });
	  	
	  	

		$(".union-wrapper").click(() => {
	        let keyword = $("#search").val();
	        window.location = "./product?cmd=list&type=search&search=" + keyword;
	    });
	  	
		
	});
	
</script>

</head>
<body>
	
	<div class="div-wrapper">
		<a class="header" href="main">
			<img src="resources/img/member/header.svg" />
		</a>
		
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
				<div class="union-wrapper">
					<img class="union" src="resources/img/member/union.svg" />
				</div>
				<input id="search" type="text" placeholder="상품 또는 식물 검색하기" style="z-index: 5; left:50px; top:-10px; outline: none; border-width: 0; width:380px"/>
			</div>
		</div>
		
		
		<form action="/moran/member" method="post" id="joinForm" onsubmit="return validateForm()">
			<div class="text-wrapper-16">회원가입</div>
			<img class="line" src="resources/img/member/line-12.svg" /> <img
				class="img" src="resources/img/member/line-13.svg" />
			<div class="text-wrapper-17">필수정보</div>
			<p class="text-wrapper-19">반가워요! 회원가입에 필요한 정보들을 작성해주세요</p>


			<div class="frame-17">
				<div class="text-wrapper-20">이름</div>
				<input type="text" name="name" class="frame-11 text-wrapper-21"
					placeholder="이름을 입력해주세요 (필수)" required>
			</div>

			<div class="frame-16">
				<div class="text-wrapper-20">이메일</div>
				<div>
					<input type="email" name="email" id="email"
						class="frame-11 text-wrapper-21" placeholder="이메일을 입력해주세요 (필수)"
						required>
					<button type="button" id="verifyEmailBtn" class="text-wrapper-18" style="background: #00B368">인증번호
						전송</button>
				</div>
			</div>

			<div class="frame-14">
				<div class="text-wrapper-20">비밀번호</div>
				<input type="password" name="pw" class="frame-11 text-wrapper-21"
					placeholder="비밀번호 (6자 이상)" minlength="6" required>
			</div>

			<div class="frame-15">
				<div class="text-wrapper-20">이메일 인증번호</div>
				<div>
					<input type="text" name="emailCode" id="emailCode"
						class="frame-11 text-wrapper-21" placeholder="인증번호 5자리" required>
					<button type="button" id="emailCodeBtn" class="text-wrapper-18" style="background: #00B368">인증번호
						확인</button>
				</div>
			</div>

			<div class="frame-13">
				<div class="text-wrapper-20">비밀번호 확인</div>
				<input type="password" name="repw" class="frame-11 text-wrapper-21"
					placeholder="입력하신 비밀번호를 한 번 더 입력해주세요" required>
			</div>

			<div class="frame-12">
				<div class="text-wrapper-20">휴대폰 번호</div>
				<input type="tel" name="phone" class="frame-11 text-wrapper-21"
					placeholder="휴대폰 번호를 입력해주세요" required>
			</div>

			<div class="frame-10">
				<div class="text-wrapper-20">생년월일</div>
				<input type="text" name="birth" class="frame-11 text-wrapper-21"
					placeholder="생년월일을 입력해주세요(Ex: 19990101)" required>
			</div>

			<div class="frame-18">
				<div class="text-wrapper-20">성별</div>
				<div class="frame-19">
					<label><input type="radio" name="gender" value="male"
						required> 남성</label> <label><input type="radio"
						name="gender" value="female" required> 여성</label>
				</div>
			</div>

			<div class="text-wrapper-23">이용 약관 동의</div>
			<div class="frame-21">
				<label><input type="checkbox" id="agreeAll"
					class="rectangle"> 모두 동의합니다</label>
			</div>

			<div class="frame-22">
				<label><input type="checkbox" name="agreement" value="term1"
					required class="rectangle-2"> 이용약관이용약관이용약관이용약관(필수)</label>
				<div class="text-wrapper-26">약관보기&gt;</div>
			</div>

			<div class="frame-23">
				<label><input type="checkbox" name="agreement" value="term2"
					class="rectangle-2"> 이용약관이용약관이용약관이용약관(선택)</label>
				<div class="text-wrapper-26">약관보기&gt;</div>
			</div>

			<div class="frame-24">
				<label><input type="checkbox" name="agreement" value="term3"
					class="rectangle-2"> 이용약관이용약관이용약관이용약관(선택)</label>
				<div class="text-wrapper-26">약관보기&gt;</div>
			</div>

			<div class="frame-25">
				<label><input type="checkbox" name="agreement" value="term4"
					class="rectangle-2"> 이용약관이용약관이용약관이용약관(선택)</label>
				<div class="text-wrapper-26">약관보기&gt;</div>
			</div>

			<div class="frame-26">
				<label><input type="checkbox" name="agreement" value="term5"
					class="rectangle-2"> 이용약관이용약관이용약관이용약관(선택)</label>
				<div class="text-wrapper-26">약관보기&gt;</div>
			</div>
			<input type="hidden" id="emailCheck" name="emailCheck" /> <input
				type="hidden" name="cmd" value="joinOk" />
			<button type="button" id="submitBtn">회원가입</button>
		</form>

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
	</div>
</body>
</html>
</body>
</html>