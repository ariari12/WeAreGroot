<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="utf-8" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        console.log("Document is ready");

        $('#sortRegDate').click(function() {
            updateQueryStringParameter('sort', 'regDate');
        });

        $('#sortViewCntDesc').click(function() {
            updateQueryStringParameter('sort', 'viewCntDesc');
        });

        $('.page-link').click(function(event) {
            event.preventDefault();
            var page = $(this).data('page');
            updateQueryStringParameter('page', page);
        });

        var currentSort = '${param.sort}';
        console.log("Current sort:", currentSort);  
        if (currentSort === 'viewCntDesc') {
            $('#sortViewCntDesc').addClass('active');
        } else {
            $('#sortRegDate').addClass('active');
        }

        function updateQueryStringParameter(key, value) {
            var uri = window.location.href;
            var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
            var separator = uri.indexOf('?') !== -1 ? "&" : "?";
            if (uri.match(re)) {
                uri = uri.replace(re, '$1' + key + "=" + value + '$2');
            } else {
                uri = uri + separator + key + "=" + value;
            }
            window.location.href = uri;
        }
    });
    
    
    function checkLoginAndRedirect(isLoggedIn) {
        // 로그인 세션 확인 (여기서는 예시로 localStorage를 사용하여 세션을 체크합니다)

        if (!isLoggedIn) {
            alert('로그인이 필요합니다.');
        } else {
            window.location.href = '?cmd=khWrite';
        }
    }
    </script>
	<link rel="stylesheet" href="resources/css/globals.css" />
	<style type="text/css">
	:root {
  --colors-light-green: rgba(118, 176, 156, 1);
  --colors-mint: rgba(140, 215, 144, 1);
}

.div-wrapper {
  position: relative;
  width: 1920px;
  height: 3483px;
  background-color: #ffffff;
}

.div-wrapper .view {
  position: absolute;
  width: 1920px;
  height: 407px;
  top: 3076px;
  left: 0;
  background-color: #ffffff;
  border-top-width: 1px;
  border-top-style: solid;
  border-color: #e4e4e4;
}

.div-wrapper .text-wrapper {
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

.div-wrapper .div {
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

.div-wrapper .p {
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

.div-wrapper .text-wrapper-2 {
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

.div-wrapper .text-wrapper-3 {
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

.div-wrapper .text-wrapper-4 {
  color: #20202080;
}

.div-wrapper .text-wrapper-5 {
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

.div-wrapper .text-wrapper-6 {
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

.div-wrapper .text-wrapper-7 {
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

.div-wrapper .text-wrapper-8 {
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

.div-wrapper .text-wrapper-9 {
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

.div-wrapper .text-wrapper-10 {
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

.div-wrapper .text-wrapper-11 {
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

.div-wrapper .frame {
  position: absolute;
  width: 1170px;
  height: 64px;
  top: 288px;
  left: 375px;
}

.div-wrapper .frame-2 {
  display: inline-flex;
  align-items: center;
  gap: 16px;
  position: absolute;
  top: 0;
  left: 0;
}

.div-wrapper .text-wrapper-12 {
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

.div-wrapper .line {
  position: relative;
  width: 1px;
  height: 20px;
  object-fit: cover;
}

.div-wrapper .text-wrapper-13 {
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

.div-wrapper .img {
  position: absolute;
  top: 64px;
  left: 0;
  width: 1170px;
  height: 1px;
}

.div-wrapper .frame-3 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 30px;
  position: absolute;
  top: 494px;
  left: 375px;
}

.div-wrapper .frame-4 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 30px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .text-wrapper-14 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-SemiBold", Helvetica;
  font-weight: 600;
  color: #000000;
  font-size: 30px;
  letter-spacing: 0;
  line-height: 40px;
  white-space: nowrap;
}

.div-wrapper .frame-5 {
  display: inline-flex;
  align-items: flex-start;
  gap: 16px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .view-2 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 10px 37px 10px 30px;
  position: relative;
  flex: 0 0 auto;
  background-color: #00b267;
}

.div-wrapper .pencil {
  position: relative;
  width: 20px;
  height: 20px;
}

.div-wrapper .text-wrapper-15 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Bold", Helvetica;
  font-weight: 700;
  color: #ffffff;
  font-size: 16px;
  letter-spacing: 0;
  line-height: 20px;
  white-space: nowrap;
}

.div-wrapper .frame-6 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 16px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .line-2 {
  position: relative;
  margin-top: -1px;
  object-fit: cover;
  width: 1170px;
  height: 1px;
}

.div-wrapper .frame-7 {
  display: inline-flex;
  align-items: flex-start;
  gap: 16px;
  position: relative;
  flex: 0 0 auto;
  opacity: 0.5;
}

.div-wrapper .text-wrapper-16 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Medium", Helvetica;
  font-weight: 500;
  color: #202020;
  font-size: 16px;
  letter-spacing: 0;
  line-height: 20px;
  white-space: nowrap;
}

.div-wrapper .line-3 {
  position: relative;
  object-fit: cover;
  width: 1170px;
  height: 1px;
}

.div-wrapper .frame-wrapper {
			  position: fixed;
			  width: 2100px;
			  height: 48px;
			  top: 0;
			  left: 0;
			  background-color: #4d4d4d;
			  z-index: 5;
}

.div-wrapper .frame-8 {
  display: inline-flex;
  align-items: center;
  justify-content: flex-end;
  position: relative;
  top: 4px;
  left: 1285px;
}

.div-wrapper .frame-9 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 8px 10px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .text-wrapper-17 {
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

.div-wrapper .frame-10 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 5px;
  padding: 8px 10px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .vector {
  position: relative;
  width: 12px;
  height: 14px;
}

.div-wrapper .view-3 {
  position: absolute;
  width: 1920px;
  height: 62px;
  top: 392px;
  left: 0;
}

.div-wrapper .frame-11 {
  display: inline-flex;
  align-items: flex-start;
  position: relative;
  top: 1px;
  left: 374px;
}

.div-wrapper .q-a-wrapper {
  display: flex;
  width: 598px;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 18px 138px;
  position: relative;
  margin-top: -1px;
  margin-bottom: -1px;
  margin-left: -1px;
  border: 1px solid;
  border-color: #e4e4e4;
}

.div-wrapper .q-a {
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

.div-wrapper .frame-12 {
  display: flex;
  width: 578px;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 18px 138px;
  position: relative;
  margin-top: -1px;
  margin-bottom: -1px;
  margin-right: -1px;
  border-top-width: 1px;
  border-top-style: solid;
  border-right-width: 1px;
  border-right-style: solid;
  border-left-width: 1px;
  border-left-style: solid;
  border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-18 {
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

.div-wrapper .frame-13 {
  display: flex;
  flex-wrap: wrap;
  width: 1170px;
  align-items: flex-start;
  gap: 30px 60px;
  position: absolute;
  top: 716px;
  left: 374px;
}

.div-wrapper .frame-14 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 20px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .rectangle {
  position: relative;
  width: 270px;
  height: 270px;
  object-fit: cover;
}

.div-wrapper .frame-15 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 12px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .text-wrapper-19 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Medium", Helvetica;
  font-weight: 500;
  color: #202020;
  font-size: 14px;
  letter-spacing: 0;
  line-height: 14px;
  white-space: nowrap;
}

.div-wrapper .text-wrapper-20 {
  position: relative;
  width: fit-content;
  font-family: "Pretendard Variable-SemiBold", Helvetica;
  font-weight: 600;
  color: #000000;
  font-size: 16px;
  letter-spacing: 0;
  line-height: 16px;
  white-space: nowrap;
}

.div-wrapper .frame-16 {
  display: inline-flex;
  align-items: flex-start;
  gap: 4px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .text-wrapper-21 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Medium", Helvetica;
  font-weight: 500;
  color: var(--colors-light-green);
  font-size: 14px;
  letter-spacing: -0.28px;
  line-height: 14px;
  white-space: nowrap;
}

.div-wrapper .frame-17 {
  display: inline-flex;
  align-items: flex-start;
  gap: 10px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .rectangle-2 {
  position: relative;
  width: 14px;
  height: 14px;
}

.div-wrapper .vector-2 {
  position: absolute;
  width: 12px;
  height: 11px;
  top: 2px;
  left: 1px;
}

.div-wrapper .text-wrapper-22 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Medium", Helvetica;
  font-weight: 500;
  color: var(--colors-mint);
  font-size: 14px;
  letter-spacing: -0.28px;
  line-height: 14px;
  white-space: nowrap;
}

.div-wrapper .vector-3 {
  position: absolute;
  width: 11px;
  height: 10px;
  top: 3px;
  left: 2px;
}

.div-wrapper .text-wrapper-23 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Medium", Helvetica;
  font-weight: 500;
  color: #2020204c;
  font-size: 14px;
  letter-spacing: -0.28px;
  line-height: 14px;
  white-space: nowrap;
}

.div-wrapper .frame-18 {
  display: inline-flex;
  flex-direction: column;
  align-items: center;
  gap: 30px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .line-4 {
  position: relative;
  margin-top: -0.5px;
  width: 1170px;
  height: 1px;
}

.div-wrapper .frame-19 {
  display: inline-flex;
  align-items: flex-start;
  gap: 20px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .frame-20 {
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .frame-21 {
  display: inline-flex;
  align-items: flex-start;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .frame-22 {
  position: relative;
  width: 40px;
  height: 40px;
}

.div-wrapper .text-wrapper-24 {
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

.div-wrapper .text-wrapper-25 {
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

.div-wrapper .header {
  position: fixed;
  width: 1920px;
  height: 120px;
  top: 48px;
  left: 0;
}

.div-wrapper .frame-23 {
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

.div-wrapper .frame-24 {
  display: inline-flex;
  align-items: flex-start;
  position: absolute;
  top: 16px;
  left: 375px;
}

.div-wrapper .frame-25 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 20px;
  position: relative;
  flex: 0 0 auto;
}

.div-wrapper .text-wrapper-26 {
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

.div-wrapper .frame-26 {
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

.div-wrapper .text-wrapper-27 {
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

.div-wrapper .ellipse {
  position: relative;
  width: 15px;
  height: 15px;
  background-color: #00b267;
  border-radius: 7.5px;
}

.div-wrapper .frame-27 {
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

.div-wrapper .text-wrapper-28 {
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

.sortButton {
        background: none;
        border: none;
        color: inherit;
        font: inherit;
        cursor: pointer;
        outline: inherit;
        padding: 0;
        margin: 0;
}

a:link {
	color: black;
}
a:visited {
	color: black;
}
<<<<<<< HEAD

=======
>>>>>>> branch 'dev' of https://github.com/ariari12/WeAreGroot.git
.frame-wrapper a{
	color : white;
}
	</style>
  </head>
  <body>
    <div class="div-wrapper">
      <div class="view">
        <div class="text-wrapper">모란모란소개</div>
        <p class="div">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="p">12345) 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-2">Fax : 02-123-4567 / E-mail: moranmoran@moran.com</p>
        <p class="text-wrapper-3">사업자등록번호 : 123-45-67890, 통신판매업신고 : 2024-서울구구-3456</p>
        <p class="UI-copyright">
          <span class="span"
            >모란모란은 통신판매중개자이며 통신판매의 거래당사자가 아닙니다. 따라서 판매자가 등록한 상품•거래•가격
            정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제 및 배포
            등의 행위는 엄격히 금지됩니다.<br
          /></span>
          <span class="text-wrapper-4">Copyright MoranMoran Co. All Rights Reserved.</span>
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
      <div class="frame-3">
        <div class="frame-4">
          <div class="text-wrapper-14">노하우</div>
          <div class="frame-5">
            <div class="view-2">
              <div class="text-wrapper-15">
              <!-- 노하우 작성하기 svg이미지 -->
              <a href="javascript:void(0);" onclick="checkLoginAndRedirect(${not empty sessionScope.memberVO})">
              <svg width="198" height="40" viewBox="0 0 198 40" fill="none" xmlns="http://www.w3.org/2000/svg">
				<rect width="198" height="40" fill="#00B368"/>
				<path d="M47.2583 15.8666C47.5833 15.5416 47.5833 14.9999 47.2583 14.6916L45.3083 12.7416C45 12.4166 44.4583 12.4166 44.1333 12.7416L42.6 14.2666L45.725 17.3916M32.5 24.3749V27.4999H35.625L44.8417 18.2749L41.7167 15.1499L32.5 24.3749Z" fill="white"/>
				<path d="M72.0156 20.9531H61.875V19.3516H72.0156V20.9531ZM73.4297 25.8125H60.4297V24.2188H73.4297V25.8125ZM67.9141 24.6641H65.9219V20.2812H67.9141V24.6641ZM63.9141 20.0312H61.875V14.3047H63.9141V20.0312ZM85.4688 27.4375H83.5V13.2031H85.4688V27.4375ZM87.5781 20.4219H85.0312V18.7891H87.5781V20.4219ZM82.5312 16.9375H74.1797V15.3359H82.5312V16.9375ZM78.3906 17.7266C79.0833 17.7266 79.7057 17.8724 80.2578 18.1641C80.8099 18.4505 81.2422 18.8516 81.5547 19.3672C81.8724 19.8828 82.0312 20.4661 82.0312 21.1172C82.0312 21.7682 81.8724 22.3516 81.5547 22.8672C81.2422 23.3828 80.8099 23.7865 80.2578 24.0781C79.7057 24.3646 79.0833 24.5078 78.3906 24.5078C77.6979 24.5078 77.0755 24.3646 76.5234 24.0781C75.9714 23.7865 75.5391 23.3828 75.2266 22.8672C74.9141 22.3516 74.7578 21.7682 74.7578 21.1172C74.7578 20.4661 74.9141 19.8828 75.2266 19.3672C75.5391 18.8516 75.9714 18.4505 76.5234 18.1641C77.0755 17.8724 77.6979 17.7266 78.3906 17.7266ZM78.3906 19.3516C78.0625 19.3516 77.7656 19.4245 77.5 19.5703C77.2396 19.7109 77.0339 19.9167 76.8828 20.1875C76.737 20.4531 76.6641 20.763 76.6641 21.1172C76.6641 21.4766 76.737 21.7891 76.8828 22.0547C77.0339 22.3203 77.2396 22.526 77.5 22.6719C77.7656 22.8125 78.0625 22.8828 78.3906 22.8828C78.7292 22.8828 79.0286 22.8125 79.2891 22.6719C79.5495 22.526 79.75 22.3203 79.8906 22.0547C80.0365 21.7891 80.1094 21.4766 80.1094 21.1172C80.1094 20.763 80.0365 20.4531 79.8906 20.1875C79.75 19.9167 79.5495 19.7109 79.2891 19.5703C79.0286 19.4245 78.7292 19.3516 78.3906 19.3516ZM79.3828 15.9453H77.3984V13.4297H79.3828V15.9453ZM101.07 22.7891H88.0703V21.1641H101.07V22.7891ZM95.5156 27.4531H93.5391V22.1953H95.5156V27.4531ZM94.5312 13.6875C95.5469 13.6875 96.4453 13.8203 97.2266 14.0859C98.013 14.3464 98.6224 14.7214 99.0547 15.2109C99.4922 15.6953 99.7109 16.2656 99.7109 16.9219C99.7109 17.5521 99.4922 18.1068 99.0547 18.5859C98.6224 19.0651 98.013 19.4349 97.2266 19.6953C96.4453 19.9557 95.5469 20.0859 94.5312 20.0859C93.5208 20.0859 92.6224 19.9557 91.8359 19.6953C91.0547 19.4349 90.4479 19.0651 90.0156 18.5859C89.5833 18.1068 89.3672 17.5521 89.3672 16.9219C89.3672 16.2656 89.5833 15.6953 90.0156 15.2109C90.4479 14.7214 91.0547 14.3464 91.8359 14.0859C92.6224 13.8203 93.5208 13.6875 94.5312 13.6875ZM94.5312 15.2812C93.8958 15.2812 93.3438 15.3438 92.875 15.4688C92.4062 15.5938 92.0469 15.7812 91.7969 16.0312C91.5521 16.276 91.4297 16.5729 91.4297 16.9219C91.4297 17.2552 91.5521 17.5417 91.7969 17.7812C92.0469 18.0208 92.4062 18.2031 92.875 18.3281C93.3438 18.4479 93.8958 18.5104 94.5312 18.5156C95.1771 18.5104 95.7344 18.4479 96.2031 18.3281C96.6719 18.2031 97.0312 18.0208 97.2812 17.7812C97.5312 17.5417 97.6562 17.2552 97.6562 16.9219C97.6562 16.5729 97.5312 16.276 97.2812 16.0312C97.0312 15.7812 96.6693 15.5938 96.1953 15.4688C95.7266 15.3438 95.1719 15.2812 94.5312 15.2812ZM110.477 15.5938C110.477 16.5 110.326 17.3516 110.023 18.1484C109.727 18.9401 109.276 19.6302 108.672 20.2188C108.073 20.8021 107.333 21.2422 106.453 21.5391L105.406 20C106.161 19.75 106.797 19.3958 107.312 18.9375C107.828 18.474 108.211 17.9557 108.461 17.3828C108.716 16.8047 108.844 16.2083 108.844 15.5938V14.6719H110.477V15.5938ZM110.859 15.6094C110.859 16.1875 110.977 16.7474 111.211 17.2891C111.451 17.8255 111.818 18.3099 112.312 18.7422C112.807 19.1745 113.424 19.513 114.164 19.7578L113.164 21.2969C112.299 21.0156 111.573 20.5911 110.984 20.0234C110.401 19.4505 109.964 18.7891 109.672 18.0391C109.38 17.2839 109.234 16.474 109.234 15.6094V14.6719H110.859V15.6094ZM113.695 15.6406H105.945V14.0469H113.695V15.6406ZM116.891 21.7969H114.898V13.2031H116.891V21.7969ZM118.812 18.3203H116.328V16.6641H118.812V18.3203ZM116.891 27.4375H114.898V23.9922H107.32V22.4062H116.891V27.4375ZM124.43 15.25C124.43 16.224 124.279 17.1276 123.977 17.9609C123.68 18.7891 123.229 19.5104 122.625 20.125C122.021 20.7396 121.268 21.2031 120.367 21.5156L119.305 19.9141C120.091 19.6641 120.745 19.3021 121.266 18.8281C121.792 18.349 122.18 17.8047 122.43 17.1953C122.68 16.5859 122.805 15.9375 122.805 15.25V13.9609H124.43V15.25ZM124.812 15.1484C124.812 15.8047 124.927 16.4219 125.156 17C125.385 17.5729 125.745 18.0807 126.234 18.5234C126.724 18.9609 127.336 19.2943 128.07 19.5234L127 21.0781C126.151 20.7812 125.443 20.3464 124.875 19.7734C124.312 19.2005 123.893 18.5234 123.617 17.7422C123.346 16.9609 123.211 16.0964 123.211 15.1484V13.9609H124.812V15.1484ZM131.422 21.5469H129.438V13.2031H131.422V21.5469ZM126.562 21.9219C127.578 21.9219 128.453 22.0286 129.188 22.2422C129.922 22.4557 130.484 22.7708 130.875 23.1875C131.271 23.6042 131.469 24.1042 131.469 24.6875C131.469 25.2604 131.271 25.7552 130.875 26.1719C130.484 26.5885 129.922 26.9036 129.188 27.1172C128.453 27.3307 127.578 27.4375 126.562 27.4375C125.557 27.4375 124.688 27.3307 123.953 27.1172C123.224 26.9036 122.661 26.5885 122.266 26.1719C121.875 25.7552 121.68 25.2604 121.68 24.6875C121.68 24.1042 121.875 23.6042 122.266 23.1875C122.661 22.7708 123.224 22.4557 123.953 22.2422C124.688 22.0286 125.557 21.9219 126.562 21.9219ZM126.562 23.4609C125.938 23.4609 125.409 23.5052 124.977 23.5938C124.544 23.6823 124.216 23.8177 123.992 24C123.768 24.1823 123.656 24.4115 123.656 24.6875C123.656 24.9427 123.768 25.1615 123.992 25.3438C124.216 25.5208 124.544 25.6562 124.977 25.75C125.409 25.8438 125.938 25.8906 126.562 25.8906C127.203 25.8906 127.74 25.8438 128.172 25.75C128.604 25.6562 128.93 25.5208 129.148 25.3438C129.367 25.1615 129.477 24.9427 129.477 24.6875C129.477 24.4115 129.367 24.1823 129.148 24C128.93 23.8177 128.604 23.6823 128.172 23.5938C127.74 23.5052 127.203 23.4609 126.562 23.4609ZM129.711 17.4531H126.766V15.8281H129.711V17.4531ZM144.484 27.4375H142.516V13.2031H144.484V27.4375ZM146.594 20.4219H144.047V18.7891H146.594V20.4219ZM141.547 16.9375H133.195V15.3359H141.547V16.9375ZM137.406 17.7266C138.099 17.7266 138.721 17.8724 139.273 18.1641C139.826 18.4505 140.258 18.8516 140.57 19.3672C140.888 19.8828 141.047 20.4661 141.047 21.1172C141.047 21.7682 140.888 22.3516 140.57 22.8672C140.258 23.3828 139.826 23.7865 139.273 24.0781C138.721 24.3646 138.099 24.5078 137.406 24.5078C136.714 24.5078 136.091 24.3646 135.539 24.0781C134.987 23.7865 134.555 23.3828 134.242 22.8672C133.93 22.3516 133.773 21.7682 133.773 21.1172C133.773 20.4661 133.93 19.8828 134.242 19.3672C134.555 18.8516 134.987 18.4505 135.539 18.1641C136.091 17.8724 136.714 17.7266 137.406 17.7266ZM137.406 19.3516C137.078 19.3516 136.781 19.4245 136.516 19.5703C136.255 19.7109 136.049 19.9167 135.898 20.1875C135.753 20.4531 135.68 20.763 135.68 21.1172C135.68 21.4766 135.753 21.7891 135.898 22.0547C136.049 22.3203 136.255 22.526 136.516 22.6719C136.781 22.8125 137.078 22.8828 137.406 22.8828C137.745 22.8828 138.044 22.8125 138.305 22.6719C138.565 22.526 138.766 22.3203 138.906 22.0547C139.052 21.7891 139.125 21.4766 139.125 21.1172C139.125 20.763 139.052 20.4531 138.906 20.1875C138.766 19.9167 138.565 19.7109 138.305 19.5703C138.044 19.4245 137.745 19.3516 137.406 19.3516ZM138.398 15.9453H136.414V13.4297H138.398V15.9453ZM159.047 27.4375H157.023V13.2031H159.047V27.4375ZM154.789 14.7031C154.789 16.2292 154.583 17.6146 154.172 18.8594C153.766 20.099 153.076 21.2396 152.102 22.2812C151.128 23.3177 149.823 24.224 148.188 25L147.141 23.4062C148.51 22.7604 149.609 22.0339 150.438 21.2266C151.266 20.4193 151.867 19.513 152.242 18.5078C152.617 17.5026 152.805 16.3516 152.805 15.0547V14.7031H154.789ZM153.719 16.2734H147.898V14.7031H153.719V16.2734Z" fill="white"/>
			   </svg>
			   </a></div>
            </div>
          </div>
        </div>
        <div class="frame-6">
          <img class="line-2" src="img/line-16.svg" />
          <div class="frame-7">
            <div class="text-wrapper-16"><button id="sortRegDate" class="sortButton" value="regDate">최신순</button></div>
            <svg width="1" height="20" viewBox="0 0 1 20" fill="none" xmlns="http://www.w3.org/2000/svg">
			<line x1="0.5" y1="2.18557e-08" x2="0.499999" y2="20" stroke="black"/>
			</svg>
            <div class="text-wrapper-16"><button id="sortViewCntDesc" class="sortButton" value="viewCntDesc">인기순</button></div>
          </div>
          <img class="line-3" src="img/line-17-2.svg" />
        </div>
      </div>
      
      
      <c:choose>
	  <c:when test="${not empty sessionScope.memberVO}">
      <div class="frame-wrapper">
        <div class="frame-8">
          <div class="frame-9"><div class="text-wrapper-17"><a href="/moran/member?cmd=myPageForm">마이페이지</a></div></div>
          <div class="frame-9"><div class="text-wrapper-17"><a href="/moran/member?cmd=logoutOk">로그아웃</a></div></div>
          <div class="frame-10"><div class="text-wrapper-17">장바구니</div></div>
        </div>
      </div>
      </c:when>

      
      <c:otherwise>
      <div class="frame-wrapper">
        <div class="frame-8">
          <div class="frame-9"><div class="text-wrapper-17"><a href="/moran/member?cmd=loginForm">로그인</a></div></div>
          <div class="frame-9"><div class="text-wrapper-17"><a href="/moran/member?cmd=joinForm">회원가입</a></div></div>
        </div>
      </div>
      </c:otherwise>
	  </c:choose>
	  
      <div class="view-3">
        <div class="frame-11">
          <div class="q-a-wrapper"><div class="q-a"><a href="?cmd=qna">Q&amp;A 게시판</a></div></div>
          <div class="frame-12"><div class="text-wrapper-18">노하우</div></div>
        </div>
      </div>
      
      <div class="frame-13">
      <!-- 글 하나 시작하는 지점 -->
      <c:forEach var="boardVO" items="${boardList }">
      <div class="frame-14">
          <a href="?cmd=khDetail&bId=${boardVO.get('bId') }"> <img class="rectangle" src="./resources/img/board/${boardVO.get('biImg') }"  alt="${boardVO.get('biImg') }" onerror="this.src='./resources/img/board/noimg.png'" /></a>
          <div class="frame-15">
            <div class="text-wrapper-19">
            	<a href="?cmd=khDetail&bId=${boardVO.get('bId') }">${boardVO.get('title')}</a>
            </div>
            <!-- 노하우의 contents는 보여줄 필요 없다고 판단 -->
<%--        <div class="text-wrapper-20">
            	<a href="?cmd=qnaDetail&bId=${boardVO.get('bId') }">${boardVO.get('contents')}</a>
            </div> --%>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                  <div class="rectangle-2"></div>
                    <svg width="12" height="11" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z" fill="#76B09C"/>
					</svg>
                  </div>
                  <div class="text-wrapper-21">${boardVO.get('likeCnt') }</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                  <div class="rectangle-2"></div>
                    <svg width="11" height="10" viewBox="0 0 11 10" fill="none" xmlns="http://www.w3.org/2000/svg">
					<path d="M5.5 0C8.525 0 11 1.969 11 4.4C11 6.831 8.525 8.8 5.5 8.8C4.818 8.8 4.1635 8.701 3.5585 8.525C1.9525 9.9 0 9.9 0 9.9C1.2815 8.6185 1.485 7.755 1.5125 7.425C0.5775 6.6385 0 5.5715 0 4.4C0 1.969 2.475 0 5.5 0Z" fill="#8CD790"/>
					</svg>
                  </div>
                  <div class="text-wrapper-22">${boardVO.get('count') }</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">${boardVO.get('regDate') }</div>
              </div>
            </div>
          </div>
        </div>
        
      </c:forEach>

        
        <!-- 글 끝나는 지점 -->
      </div>
      <a href="main"><img class="header" src="resources/img/member/header.svg" /></a>
      <div class="frame-23">
        <div class="frame-24">
          <div class="frame-25"><div class="text-wrapper-26"><a href="main">홈</a></div></div>
          <div class="frame-26"><div class="text-wrapper-27"><a href="board">커뮤니티</a></div></div>
          <div class="frame-25"><div class="text-wrapper-26"><a href="product?cmd=list">스토어</a></div></div>
          <div class="frame-25"><div class="text-wrapper-26">공지</div></div>
          <div class="frame-25">
            <div class="text-wrapper-26">이벤트</div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-25"><div class="text-wrapper-26">1:1 문의</div></div>
        </div>
        <div class="frame-27">
          <p class="text-wrapper-28">상품 또는 식물, 커뮤니티 글 검색하기</p>
          <div class="union-wrapper"><img class="union" src="img/union.svg" /></div>
        </div>
      </div>
    </div>
  </body>
</html>