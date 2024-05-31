<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
            window.location.href = '?cmd=qnaWrite';
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
  position: absolute;
  width: 1920px;
  height: 407px;
  top: 2866px;
  left: 0;
  background-color: #ffffff;
  border-top-width: 1px;
  border-top-style: solid;
  border-color: #e4e4e4;
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

.q-a .frame-3 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 30px;
  position: absolute;
  top: 494px;
  left: 375px;
}

.q-a .frame-4 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 30px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .text-wrapper-14 {
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

.q-a .frame-5 {
  display: inline-flex;
  align-items: flex-start;
  gap: 16px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .view-2 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 10px 37px 10px 30px;
  position: relative;
  flex: 0 0 auto;
  background-color: #ffffff;
  border: 1px solid;
  border-color: #00b267;
}

.q-a .img-2 {
  position: relative;
  width: 20px;
  height: 20px;
}

.q-a .text-wrapper-15 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-SemiBold", Helvetica;
  font-weight: 600;
  color: #00b267;
  font-size: 16px;
  letter-spacing: 0;
  line-height: 20px;
  white-space: nowrap;
}

.q-a .view-3 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 10px 37px 10px 30px;
  position: relative;
  flex: 0 0 auto;
  background-color: #00b267;
}

.q-a .text-wrapper-16 {
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

.q-a .frame-6 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 16px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .line-2 {
  position: relative;
  margin-top: -1px;
  object-fit: cover;
  width: 1170px;
  height: 1px;
}

.q-a .frame-7 {
  display: inline-flex;
  align-items: flex-start;
  gap: 16px;
  position: relative;
  flex: 0 0 auto;
  opacity: 0.5;
}

.q-a .text-wrapper-17 {
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

.q-a .line-3 {
  position: relative;
  object-fit: cover;
  width: 1170px;
  height: 1px;
}

.q-a .frame-8 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 4px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .frame-9 {
  display: inline-flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 8px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .frame-10 {
  display: flex;
  width: 625px;
  align-items: flex-start;
  gap: 4px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .text-wrapper-18 {
  position: relative;
  width: fit-content;
  margin-top: -1px;
  font-family: "Pretendard Variable-Bold", Helvetica;
  font-weight: 700;
  color: #00b267;
  font-size: 16px;
  letter-spacing: 0;
  line-height: 24px;
  white-space: nowrap;
}

.q-a .text-wrapper-19 {
  position: relative;
  width: 1130px;
  height: 24px;
  margin-top: -1px;
  margin-right: -525px;
  font-family: "Pretendard Variable-SemiBold", Helvetica;
  font-weight: 600;
  color: #000000;
  font-size: 16px;
  letter-spacing: 0;
  line-height: 24px;
  white-space: nowrap;
}

.q-a .frame-11 {
  display: inline-flex;
  align-items: flex-start;
  gap: 363px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .text-wrapper-20 {
  position: relative;
  width: 625px;
  margin-top: -1px;
  font-family: "Pretendard Variable-Regular", Helvetica;
  font-weight: 400;
  color: #000000;
  font-size: 16px;
  letter-spacing: 0;
  line-height: normal;
}

.q-a .frame-12 {
  display: inline-flex;
  align-items: flex-start;
  gap: 20px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .rectangle {
  position: relative;
  width: 81px;
  height: 81px;
  object-fit: cover;
}

.q-a .frame-13 {
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
  color: var(--colors-light-green);
  font-size: 14px;
  letter-spacing: -0.28px;
  line-height: 14px;
  white-space: nowrap;
}

.q-a .frame-14 {
  display: inline-flex;
  align-items: flex-start;
  gap: 10px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .rectangle-2 {
  position: relative;
  width: 14px;
  height: 14px;
}

.q-a .vector {
  position: absolute;
  width: 12px;
  height: 11px;
  top: 2px;
  left: 1px;
}

.q-a .text-wrapper-22 {
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

.q-a .vector-2 {
  position: absolute;
  width: 11px;
  height: 10px;
  top: 3px;
  left: 2px;
}

.q-a .text-wrapper-23 {
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

.q-a .frame-15 {
  display: inline-flex;
  flex-direction: column;
  align-items: center;
  gap: 30px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .line-4 {
  position: relative;
  width: 1170px;
  height: 1px;
  margin-top: -0.5px;
}

.q-a .frame-16 {
  position: relative;
  flex: 0 0 auto;
}

.q-a .frame-17 {
  display: inline-flex;
  align-items: flex-start;
  position: relative;
  flex: 0 0 auto;
}

.q-a .div-wrapper {
  position: relative;
  width: 40px;
  height: 40px;
}

.q-a .text-wrapper-24 {
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

.q-a .text-wrapper-25 {
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

.q-a .frame-wrapper {
			  position: fixed;
			  width: 2100px;
			  height: 48px;
			  top: 0;
			  left: 0;
			  background-color: #4d4d4d;
}

.q-a .frame-18 {
  display: inline-flex;
  align-items: center;
  justify-content: flex-end;
  position: relative;
  top: 4px;
  left: 1285px;
}

.q-a .frame-19 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 8px 10px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .text-wrapper-26 {
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

.q-a .frame-20 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 5px;
  padding: 8px 10px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .vector-3 {
  position: relative;
  width: 12px;
  height: 14px;
}

.q-a .view-4 {
  position: absolute;
  width: 1920px;
  height: 62px;
  top: 392px;
  left: 0;
}

.q-a .frame-21 {
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

.q-a .text-wrapper-27 {
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

.q-a .frame-22 {
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

.q-a .text-wrapper-28 {
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

.q-a .header {
  position: fixed;
  width: 1920px;
  height: 120px;
  top: 48px;
  left: 0;
}

.q-a .frame-23 {
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

.q-a .frame-24 {
  display: inline-flex;
  align-items: flex-start;
  position: absolute;
  top: 16px;
  left: 375px;
}

.q-a .frame-25 {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 20px;
  position: relative;
  flex: 0 0 auto;
}

.q-a .text-wrapper-29 {
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

.q-a .frame-26 {
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

.q-a .text-wrapper-30 {
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

.q-a .frame-27 {
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

.q-a .text-wrapper-31 {
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

.frame-wrapper a{
	color : white;
}

    </style>
  </head>
  <body>
    <div class="q-a">
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
          <div class="text-wrapper-14">Q&amp;A 게시판</div>
          <div class="frame-5">	
            <div class="view-3">
            <!-- QnA 등록 버튼 -->
        <a href="javascript:void(0);" onclick="checkLoginAndRedirect(${not empty sessionScope.memberVO})">
			<svg width="153" height="40" viewBox="0 0 153 40" fill="none" xmlns="http://www.w3.org/2000/svg">
			<rect width="153" height="40" fill="#00B368"/>
			<path d="M47.2583 15.8666C47.5833 15.5416 47.5833 14.9999 47.2583 14.6916L45.3083 12.7416C45 12.4166 44.4583 12.4166 44.1333 12.7416L42.6 14.2666L45.725 17.3916M32.5 24.3749V27.4999H35.625L44.8417 18.2749L41.7167 15.1499L32.5 24.3749Z" fill="white"/>
			<path d="M72.3047 20.5156H70.3281V13.2031H72.3047V20.5156ZM72.3203 24.875H64.7656V26.3984H62.8203V23.4531H70.3359V22.5859H62.7891V21.0781H72.3203V24.875ZM72.7109 27.3359H62.8203V25.8047H72.7109V27.3359ZM65.5703 15.1406C65.5703 15.9896 65.4115 16.7865 65.0938 17.5312C64.7812 18.2708 64.3125 18.9167 63.6875 19.4688C63.0677 20.0156 62.3047 20.4167 61.3984 20.6719L60.4922 19.1016C61.2526 18.8828 61.8906 18.5677 62.4062 18.1562C62.9219 17.7448 63.3047 17.2812 63.5547 16.7656C63.8099 16.2448 63.9375 15.7031 63.9375 15.1406V14.5469H65.5703V15.1406ZM65.9609 15.1406C65.9609 15.6719 66.0859 16.1797 66.3359 16.6641C66.5859 17.1484 66.9635 17.5807 67.4688 17.9609C67.9792 18.3411 68.612 18.6328 69.3672 18.8359L68.4219 20.3828C67.5417 20.1328 66.7969 19.75 66.1875 19.2344C65.5833 18.7188 65.1302 18.1094 64.8281 17.4062C64.526 16.6979 64.375 15.9427 64.375 15.1406V14.5469H65.9609V15.1406ZM68.8281 15.4609H61.0078V13.875H68.8281V15.4609ZM87.2422 21.8359H74.2422V20.2422H87.2422V21.8359ZM81.8984 24.2891H79.9297V21.2422H81.8984V24.2891ZM85.5859 19.0781H75.8594V13.8438H85.5859V19.0781ZM77.8125 17.5234H83.625V15.3828H77.8125V17.5234ZM85.8125 27.1953H75.7578V25.5859H85.8125V27.1953ZM77.7578 26.1172H75.7578V23.0469H77.7578V26.1172ZM99.2969 27.4375H97.3281V13.2031H99.2969V27.4375ZM101.406 20.4219H98.8594V18.7891H101.406V20.4219ZM96.3594 16.9375H88.0078V15.3359H96.3594V16.9375ZM92.2188 17.7266C92.9115 17.7266 93.5339 17.8724 94.0859 18.1641C94.638 18.4505 95.0703 18.8516 95.3828 19.3672C95.7005 19.8828 95.8594 20.4661 95.8594 21.1172C95.8594 21.7682 95.7005 22.3516 95.3828 22.8672C95.0703 23.3828 94.638 23.7865 94.0859 24.0781C93.5339 24.3646 92.9115 24.5078 92.2188 24.5078C91.526 24.5078 90.9036 24.3646 90.3516 24.0781C89.7995 23.7865 89.3672 23.3828 89.0547 22.8672C88.7422 22.3516 88.5859 21.7682 88.5859 21.1172C88.5859 20.4661 88.7422 19.8828 89.0547 19.3672C89.3672 18.8516 89.7995 18.4505 90.3516 18.1641C90.9036 17.8724 91.526 17.7266 92.2188 17.7266ZM92.2188 19.3516C91.8906 19.3516 91.5938 19.4245 91.3281 19.5703C91.0677 19.7109 90.862 19.9167 90.7109 20.1875C90.5651 20.4531 90.4922 20.763 90.4922 21.1172C90.4922 21.4766 90.5651 21.7891 90.7109 22.0547C90.862 22.3203 91.0677 22.526 91.3281 22.6719C91.5938 22.8125 91.8906 22.8828 92.2188 22.8828C92.5573 22.8828 92.8568 22.8125 93.1172 22.6719C93.3776 22.526 93.5781 22.3203 93.7188 22.0547C93.8646 21.7891 93.9375 21.4766 93.9375 21.1172C93.9375 20.763 93.8646 20.4531 93.7188 20.1875C93.5781 19.9167 93.3776 19.7109 93.1172 19.5703C92.8568 19.4245 92.5573 19.3516 92.2188 19.3516ZM93.2109 15.9453H91.2266V13.4297H93.2109V15.9453ZM113.859 27.4375H111.836V13.2031H113.859V27.4375ZM109.602 14.7031C109.602 16.2292 109.396 17.6146 108.984 18.8594C108.578 20.099 107.888 21.2396 106.914 22.2812C105.94 23.3177 104.635 24.224 103 25L101.953 23.4062C103.323 22.7604 104.422 22.0339 105.25 21.2266C106.078 20.4193 106.68 19.513 107.055 18.5078C107.43 17.5026 107.617 16.3516 107.617 15.0547V14.7031H109.602ZM108.531 16.2734H102.711V14.7031H108.531V16.2734Z" fill="white"/>
			</svg>
			</a>            
            </div>
          </div>
        </div>
        <div class="frame-6">
          <img class="line-2" src="img/line-16.svg" />
		<div class="frame-7">
		    <div class="text-wrapper-17"><button id="sortRegDate" class="sortButton" value="regDate">최신순</button></div>
		    <svg width="1" height="20" viewBox="0 0 1 20" fill="none" xmlns="http://www.w3.org/2000/svg">
			<line x1="0.5" y1="2.18557e-08" x2="0.499999" y2="20" stroke="black"/>
			</svg>
		    <div class="text-wrapper-17"><button id="sortViewCntDesc" class="sortButton" value="viewCntDesc">인기순</button></div>
		    <img class="line" src="img/line-18.svg" />
		</div>
          <svg width="1170" height="1" viewBox="0 0 1170 1" fill="none" xmlns="http://www.w3.org/2000/svg">
		  <line y1="0.5" x2="1170" y2="0.5" stroke="#E4E4E4"/>
		  </svg>
        </div>
        <div class="frame-4">
          <div class="frame-4">
            <!-- 글하나 시작지점 -->
            <c:forEach var="boardVO" items="${boardList }">
              <div class="frame-8">
              <a href="?cmd=qnaDetail&bId=${boardVO.get('bId') }&count=${boardVO.get('count')}">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">${boardVO.get('title')}</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    ${boardVO.get('contents')}
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="./resources/img/board/${boardVO.get('biImg') }" alt="${boardVO.get('biImg') }" onerror="this.src='./resources/img/board/noimg.png'" />
                  </div>
                </div>
              </div>
              </a>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <svg width="12" height="11" viewBox="0 0 12 11" fill="none" xmlns="http://www.w3.org/2000/svg">
					  <path d="M12 4.90909C12 4.30364 11.5091 3.81818 10.9091 3.81818H7.46182L7.98546 1.32545C7.99636 1.27091 8.00182 1.21091 8.00182 1.15091C8.00182 0.927273 7.90909 0.72 7.76182 0.572727L7.18364 0L3.59455 3.58909C3.39273 3.79091 3.27273 4.06364 3.27273 4.36364V9.81818C3.27273 10.1075 3.38766 10.385 3.59225 10.5896C3.79683 10.7942 4.07431 10.9091 4.36364 10.9091H9.27273C9.72546 10.9091 10.1127 10.6364 10.2764 10.2436L11.9236 6.39818C11.9727 6.27273 12 6.14182 12 6V4.90909ZM0 10.9091H2.18182V4.36364H0V10.9091Z" fill="#76B09C"/>
					  </svg>
                    </div>
                    <div class="text-wrapper-21">${boardVO.get('likeCnt') }</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <svg width="11" height="10" viewBox="0 0 11 10" fill="none" xmlns="http://www.w3.org/2000/svg">
					  <path d="M5.5 0C8.525 0 11 1.969 11 4.4C11 6.831 8.525 8.8 5.5 8.8C4.818 8.8 4.1635 8.701 3.5585 8.525C1.9525 9.9 0 9.9 0 9.9C1.2815 8.6185 1.485 7.755 1.5125 7.425C0.5775 6.6385 0 5.5715 0 4.4C0 1.969 2.475 0 5.5 0Z" fill="#8CD790"/>
					  </svg>
                    </div>
                    <div class="text-wrapper-22">${boardVO.get('count') }</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">${boardVO.get('regDate') }</div>
                </div>
              </div>
            </div>
          <svg width="1170" height="1" viewBox="0 0 1170 1" fill="none" xmlns="http://www.w3.org/2000/svg">
		  <line y1="0.5" x2="1170" y2="0.5" stroke="#E4E4E4"/>
		  </svg>
            </c:forEach>

            <!-- 글하나 끝나는지점 -->
          </div>
          <div class="frame-15">
            <img class="line-4" src="img/line-1.svg" />
            <div class="frame-12">
            <c:if test="${currentPage != 1 }">
            <a href="#" class="page-link" data-page="${currentPage-1}">
                <svg width="80" height="40" viewBox="0 0 80 40" fill="none" xmlns="http://www.w3.org/2000/svg">
				<rect x="0.5" y="0.5" width="79" height="39" rx="3.5" fill="white"/>
				<rect x="0.5" y="0.5" width="79" height="39" rx="3.5" stroke="#E4E4E4"/>
				<path d="M44.2625 25.725L38.5375 20L44.2625 14.2625L42.5 12.5L35 20L42.5 27.5L44.2625 25.725Z" fill="#202020" fill-opacity="0.5"/>
			  </svg>
            </a>
            </c:if>

	        <div class="frame-17">
	            <c:forEach var="i" begin="1" end="${totalPages}">
	                <c:choose>
	                    <c:when test="${i == currentPage}">
	                        <div class="div-wrapper"><div class="text-wrapper-24">${i}</div></div>
	                    </c:when>
	                    <c:otherwise>
	                        <div class="div-wrapper"><div class="text-wrapper-25"><a href="#" class="page-link" data-page="${i}">${i}</a></div></div>
	                    </c:otherwise>
	                </c:choose>
	            </c:forEach>
	        </div>
	        <c:if test="${currentPage != totalPages }">
	          <a href="#" class="page-link" data-page="${currentPage+1}">
              <svg width="80" height="40" viewBox="0 0 80 40" fill="none" xmlns="http://www.w3.org/2000/svg">
				<rect x="-0.5" y="0.5" width="79" height="39" rx="3.5" transform="matrix(-1 0 0 1 79 0)" fill="white"/>
				<rect x="-0.5" y="0.5" width="79" height="39" rx="3.5" transform="matrix(-1 0 0 1 79 0)" stroke="#E4E4E4"/>
				<path d="M35.7375 25.725L41.4625 20L35.7375 14.2625L37.5 12.5L45 20L37.5 27.5L35.7375 25.725Z" fill="#202020" fill-opacity="0.5"/>
			  </svg>
			  </a>
	        </c:if>

            </div>
          </div>
        </div>
      </div>


      <div class="view-4">
        <div class="frame-21">
          <div class="q-a-wrapper"><div class="text-wrapper-27">Q&amp;A 게시판</div></div>
          <div class="frame-22"><div class="text-wrapper-28"><a href="?cmd=kh">노하우</a></div></div>
        </div>
      </div>

      <a href="main"><img class="header" src="resources/img/member/header.svg" /></a>
      <div class="frame-23">
        <div class="frame-24">
          <div class="frame-25"><div class="text-wrapper-29"><a href="main">홈</a></div></div>
          <div class="frame-26"><div class="text-wrapper-30"><a href="board">커뮤니티</a></div></div>
          <div class="frame-25"><div class="text-wrapper-29"><a href="product?cmd=list">스토어</a></div></div>
          <div class="frame-25"><div class="text-wrapper-29">공지</div></div>
          <div class="frame-25">
            <div class="text-wrapper-29"><a href="event">이벤트</a></div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-25"><div class="text-wrapper-29">1:1 문의</div></div>
        </div>
        <div class="frame-27">
          <p class="text-wrapper-31">상품 또는 식물, 커뮤니티 글 검색하기</p>
          <div class="union-wrapper"><img class="union" src="../../resources/img/member/union.svg" /></div>
        </div>
      </div>
      
      
      
      <c:choose>
	  <c:when test="${not empty sessionScope.memberVO}">
	      <div class="frame-wrapper">
	        <div class="frame-18">
	          <div class="frame-19"><div class="text-wrapper-26"><a href="/moran/member?cmd=myPageForm">마이페이지</a></div></div>
	          <div class="frame-19"><div class="text-wrapper-26"><a href="/moran/member?cmd=logoutOk">로그아웃</a></div></div>
	          <div class="frame-19"><div class="text-wrapper-26">장바구니</div></div>
	        </div>
	      </div>
      </c:when>
      
      <c:otherwise>
			<div class="frame-wrapper">
				<div class="frame-18">
					<div class="frame-19"><div class="text-wrapper-26"><a href="/moran/member?cmd=loginForm">로그인</a></div></div>
					<div class="frame-19"><div class="text-wrapper-26"><a href="/moran/member?cmd=joinForm">회원가입</a></div></div>
				</div>
			</div>
		</c:otherwise>
	   </c:choose>
      
    </div>
  </body>
</html>