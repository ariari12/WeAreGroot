
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
            <div class="view-2">
              <div class="text-wrapper-15">
              <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
			  <path d="M10.833 6.66659C10.833 7.55064 10.4818 8.39849 9.8567 9.02361C9.23158 9.64873 8.38373 9.99992 7.49967 9.99992C6.61562 9.99992 5.76777 9.64873 5.14265 9.02361C4.51753 8.39849 4.16634 7.55064 4.16634 6.66659C4.16634 5.78253 4.51753 4.93468 5.14265 4.30956C5.76777 3.68444 6.61562 3.33325 7.49967 3.33325C8.38373 3.33325 9.23158 3.68444 9.8567 4.30956C10.4818 4.93468 10.833 5.78253 10.833 6.66659ZM14.1663 14.9999V16.6666H0.833008V14.9999C0.833008 13.1583 3.81634 11.6666 7.49967 11.6666C11.183 11.6666 14.1663 13.1583 14.1663 14.9999ZM17.083 12.0833V13.3333H15.833V12.0833H17.083ZM15.4163 7.91658H14.1663V7.49992C14.1663 6.83688 14.4297 6.20099 14.8986 5.73215C15.3674 5.26331 16.0033 4.99992 16.6663 4.99992C17.3294 4.99992 17.9653 5.26331 18.4341 5.73215C18.903 6.20099 19.1663 6.83688 19.1663 7.49992C19.1663 8.30825 18.7497 9.06659 18.0913 9.50825L17.8413 9.66659C17.3663 9.99992 17.083 10.5083 17.083 11.0833V11.2499H15.833V11.0833C15.833 10.0916 16.333 9.16659 17.158 8.62492L17.3997 8.46659C17.7247 8.24992 17.9163 7.89159 17.9163 7.49992C17.9163 7.1684 17.7846 6.85046 17.5502 6.61603C17.3158 6.38161 16.9979 6.24992 16.6663 6.24992C16.3348 6.24992 16.0169 6.38161 15.7825 6.61603C15.548 6.85046 15.4163 7.1684 15.4163 7.49992V7.91658Z" fill="#00B368"/>
			  </svg>
              답변을 기다리는 질문</div>
            </div>
            <div class="view-3">
              <div class="text-wrapper-16">
              <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
 			  <path d="M17.2583 5.86655C17.5833 5.54155 17.5833 4.99989 17.2583 4.69155L15.3083 2.74155C15 2.41655 14.4583 2.41655 14.1333 2.74155L12.6 4.26655L15.725 7.39155M2.5 14.3749V17.4999H5.625L14.8417 8.27489L11.7167 5.14989L2.5 14.3749Z" fill="white"/>
			  </svg>
              <a href="?cmd=qnaWrite">질문하기</a></div>
            </div>
          </div>
        </div>
        <div class="frame-6">
          <img class="line-2" src="img/line-16.svg" />
		<div class="frame-7">
		    <div class="text-wrapper-17"><button id="sortRegDate" class="sortButton" value="regDate">최신순</button></div>
		    <img class="line" src="img/line-17.svg" />
		    <div class="text-wrapper-17"><button id="sortViewCntDesc" class="sortButton" value="viewCntDesc">인기순</button></div>
		    <img class="line" src="img/line-18.svg" />
		</div>
          <img class="line-3" src="img/line-17-2.svg" />
        </div>
        <div class="frame-4">
          <div class="frame-4">
            <!-- 글하나 시작지점 -->
            <c:forEach var="boardVO" items="${boardList }">
              <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19"><a href="?cmd=qnaDetail&bId=${boardVO.get('bId') }">${boardVO.get('title')}</a></div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    <a href="?cmd=qnaDetail&bId=${boardVO.get('bId') }">${boardVO.get('contents')}</a>
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="./resources/img/board/${boardVO.get('biImg') }" alt="${boardVO.get('biImg') }" onerror="this.src='./resources/img/board/noimg.png'" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-4.svg" />
                    </div>
                    <div class="text-wrapper-21">${boardVO.get('likeCnt') }</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-9.svg" />
                    </div>
                    <div class="text-wrapper-22">${boardVO.get('count') }</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">${boardVO.get('regDate') }</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-25.svg" />
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