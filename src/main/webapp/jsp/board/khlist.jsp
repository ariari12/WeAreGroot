<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta charset="utf-8" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="resources/css/globals.css" />
	<style type="text/css">
	:root {
  --colors-light-green: rgba(118, 176, 156, 1);
  --colors-mint: rgba(140, 215, 144, 1);
}.div-wrapper {
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
  position: absolute;
  width: 1920px;
  height: 48px;
  top: 0;
  left: 0;
  background-color: #4d4d4d;
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
              <img class="pencil" src="img/pencil.svg" />
              <div class="text-wrapper-15">노하우 작성하기</div>
            </div>
          </div>
        </div>
        <div class="frame-6">
          <img class="line-2" src="img/line-16.svg" />
          <div class="frame-7">
            <div class="text-wrapper-16">최신순</div>
            <img class="line" src="img/line-17.svg" />
            <div class="text-wrapper-16">인기순</div>
          </div>
          <img class="line-3" src="img/line-17-2.svg" />
        </div>
      </div>
      
      
      <c:choose>
	  <c:when test="${not empty sessionScope.memberVO}">
      <div class="frame-wrapper">
        <div class="frame-8">
          <div class="frame-9"><div class="text-wrapper-17">><a href="/moran/member?cmd=myPageForm">마이페이지</a></div></div>
          <div class="frame-9"><div class="text-wrapper-17"><a href="/moran/member?cmd=logoutOk">로그아웃</a></div></div>
          <div class="frame-10"><div class="text-wrapper-17">장바구니</div></div>
        </div>
      </div>
      </c:when>

      
      <c:otherwise>
      <div class="frame-wrapper">
        <div class="frame-8">
          <div class="frame-9"><div class="text-wrapper-17">><a href="/moran/member?cmd=loginForm">로그인</a></div></div>
          <div class="frame-9"><div class="text-wrapper-17"><a href="/moran/member?cmd=joinForm">회원가입</a></div></div>
        </div>
      </div>
      </c:otherwise>
	  </c:choose>
	  
      <div class="view-3">
        <div class="frame-11">
          <div class="q-a-wrapper"><div class="q-a">Q&amp;A 게시판</div></div>
          <div class="frame-12"><div class="text-wrapper-18">노하우</div></div>
        </div>
      </div>
      <div class="frame-13">
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626571.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-3.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-21.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626574-2.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-16.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-6.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626573-3.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-7.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-10.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626572-3.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-18.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-4.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626571-3.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-37.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-2.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626574-4.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-5.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-28.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626573-2.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-23.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-32.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626572.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-29.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626572-2.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-26.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-12.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626572-6.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-33.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/image.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626574.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-27.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-17.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626574-3.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-25.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-36.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626571-2.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-11.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-35.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/image.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-15.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-14.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626573-4.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-9.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-31.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626572-5.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-30.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-22.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626573.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-34.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-19.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626572-4.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-20.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-38.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-14">
          <img class="rectangle" src="img/rectangle-34626571-4.png" />
          <div class="frame-15">
            <div class="text-wrapper-19">사용자아이디</div>
            <div class="text-wrapper-20">노하우글제목제목제목제목!</div>
            <div class="frame-5">
              <div class="frame-16">
                <div class="text-wrapper-21">공감</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-2" src="img/vector-13.svg" />
                  </div>
                  <div class="text-wrapper-21">20</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-22">댓글</div>
                <div class="frame-16">
                  <div class="frame-17">
                    <div class="rectangle-2"></div>
                    <img class="vector-3" src="img/vector-24.svg" />
                  </div>
                  <div class="text-wrapper-22">13</div>
                </div>
              </div>
              <div class="frame-16">
                <div class="text-wrapper-23">23/11/01</div>
                <div class="text-wrapper-23">22:58</div>
              </div>
            </div>
          </div>
        </div>
        <div class="frame-18">
          <img class="line-4" src="img/line-1.svg" />
          <div class="frame-19">
            <img class="frame-20" src="img/frame-30.svg" />
            <div class="frame-21">
              <div class="frame-22"><div class="text-wrapper-24">1</div></div>
              <div class="frame-22"><div class="text-wrapper-25">2</div></div>
              <div class="frame-22"><div class="text-wrapper-25">3</div></div>
            </div>
            <img class="frame-20" src="img/frame-35.svg" />
          </div>
        </div>
      </div>
      <a href="main"><img class="header" src="resources/img/member/header.svg" /></a>
      <div class="frame-23">
        <div class="frame-24">
          <div class="frame-25"><div class="text-wrapper-26">홈</div></div>
          <div class="frame-26"><div class="text-wrapper-27">커뮤니티</div></div>
          <div class="frame-25"><div class="text-wrapper-26">스토어</div></div>
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