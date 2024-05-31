<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="resources/css/globals.css" />
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <style>
    	a {  	text-align: center;
    			text-decoration: none; /* 링크의 밑줄 제거 */  
    			color: inherit; /* 링크의 색상 제거 */
    		}
    		
    		.div-wrapper {
			  position: relative;
			  width: 2100px;
			  height: 1774px;
			  background-color: #ffffff;
			}
			
			.div-wrapper .overlap-group {
			  position: absolute;
			  width: 1170px;
			  height: 200px;
			  top: 288px;
			  left: 375px;
			  background-image: url(resources/img/member/rectangle-1.png);
			  background-size: cover;
			  background-position: 50% 50%;
			}
			
			.div-wrapper .text-wrapper {
			  position: absolute;
			  top: 59px;
			  left: 264px;
			  text-shadow: 0px 4px 4px #00000040;
			  font-family: "Pretendard Variable-Bold", Helvetica;
			  font-weight: 700;
			  color: #ffffff;
			  font-size: 40px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .group {
			  position: absolute;
			  width: 89px;
			  height: 30px;
			  top: 17px;
			  left: 16px;
			}
			
			.div-wrapper .frame {
			  display: inline-flex;
			  align-items: center;
			  justify-content: center;
			  gap: 10px;
			  padding: 8px 16px;
			  position: absolute;
			  top: 131px;
			  left: 498px;
			  background-color: #ffffff;
			  border-radius: 20px;
			  overflow: hidden;
			  box-shadow: 0px 4px 4px #00000040;
			}
			
			.div-wrapper .div {
			  position: relative;
			  width: fit-content;
			  margin-top: -1px;
			  font-family: "Pretendard Variable-Bold", Helvetica;
			  font-weight: 700;
			  color: #00b267;
			  font-size: 20px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .did-you-know-wrapper {
			  display: inline-flex;
			  align-items: center;
			  justify-content: center;
			  gap: 10px;
			  padding: 10px 16px;
			  position: absolute;
			  top: 508px;
			  left: 375px;
			  background-color: #ededed;
			  border-radius: 4px;
			  overflow: hidden;
			}
			
			.div-wrapper .did-you-know {
			  position: relative;
			  width: 1138px;
			  height: 19px;
			  margin-top: -1px;
			  opacity: 0.8;
			  font-family: "Pretendard Variable-Medium", Helvetica;
			  font-weight: 500;
			  color: #202020;
			  font-size: 16px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .frame-2 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: flex-start;
			  gap: 40px;
			  position: absolute;
			  top: 627px;
			  left: 375px;
			}
			
			.div-wrapper .frame-3 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: flex-start;
			  gap: 31px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-4 {
			  display: inline-flex;
			  align-items: center;
			  gap: 16px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .text-wrapper-2 {
			  font-family: "Pretendard Variable-SemiBold", Helvetica;
			  font-weight: 600;
			  color: #202020;
			  font-size: 28px;
			  letter-spacing: -0.56px;
			  line-height: normal;
			  position: relative;
			  width: fit-content;
			  margin-top: -1px;
			  white-space: nowrap;
			}
			
			.div-wrapper .line {
			  position: relative;
			  width: 1px;
			  height: 20px;
			  object-fit: cover;
			}
			
			.div-wrapper .text-wrapper-3 {
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
			  position: relative;
			  width: 1170px;
			  height: 1px;
			  margin-bottom: -0.5px;
			}
			
			.div-wrapper .frame-5 {
			  display: inline-flex;
			  align-items: flex-start;
			  gap: 30px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-6 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: flex-start;
			  gap: 14px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-7 {
			  display: inline-flex;
			  align-items: flex-start;
			  gap: 10px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .rectangle {
			  position: relative;
			  width: 271px;
			  height: 271px;
			  margin-top: -0.5px;
			  margin-bottom: -0.5px;
			  margin-left: -0.5px;
			  margin-right: -0.5px;
			  object-fit: cover;
			}
			
			.div-wrapper .frame-8 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: center;
			  justify-content: center;
			  gap: 10px;
			  padding: 4px 11px;
			  position: absolute;
			  top: 0;
			  left: 0;
			  background-color: #ffffff;
			  border-radius: 4px 0px 4px 0px;
			  overflow: hidden;
			  border: 0.5px solid;
			  border-color: #e4e4e4;
			}
			
			.div-wrapper .text-wrapper-4 {
			  position: relative;
			  width: fit-content;
			  margin-top: -0.5px;
			  font-family: "Pretendard Variable-Bold", Helvetica;
			  font-weight: 700;
			  color: #202020;
			  font-size: 20px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .frame-9 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: flex-start;
			  gap: 12px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-10 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: flex-start;
			  gap: 8px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .text-wrapper-5 {
			  position: relative;
			  width: 270px;
			  height: 19px;
			  margin-top: -1px;
			  font-family: "Pretendard Variable-Medium", Helvetica;
			  font-weight: 500;
			  color: #202020;
			  font-size: 16px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .text-wrapper-6 {
			  position: relative;
			  width: 270px;
			  font-family: "Pretendard Variable-Medium", Helvetica;
			  font-weight: 500;
			  color: #20202080;
			  font-size: 14px;
			  letter-spacing: 0;
			  line-height: normal;
			}
			
			.div-wrapper .text-wrapper-7 {
			  position: relative;
			  width: 270px;
			  font-family: "Pretendard Variable-SemiBold", Helvetica;
			  font-weight: 600;
			  color: #202020;
			  font-size: 18px;
			  letter-spacing: 0;
			  line-height: normal;
			}
			
			.div-wrapper .frame-11 {
			  display: inline-flex;
			  align-items: flex-start;
			  gap: 6px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-12 {
			  display: inline-flex;
			  align-items: center;
			  gap: 4px;
			  padding: 1px 4px;
			  position: relative;
			  flex: 0 0 auto;
			  background-color: #ff3666;
			  border-radius: 2px;
			  overflow: hidden;
			}
			
			.div-wrapper .vector {
			  position: relative;
			  width: 9.34px;
			  height: 12px;
			}
			
			.div-wrapper .text-wrapper-8 {
			  position: relative;
			  width: fit-content;
			  margin-top: -1px;
			  font-family: "Pretendard Variable-Bold", Helvetica;
			  font-weight: 700;
			  color: #ffffff;
			  font-size: 14px;
			  letter-spacing: 0;
			  line-height: normal;
			}
			
			.div-wrapper .frame-13 {
			  display: inline-flex;
			  align-items: center;
			  gap: 4px;
			  padding: 1px 4px;
			  position: relative;
			  flex: 0 0 auto;
			  background-color: #0075ff;
			  border-radius: 2px;
			  overflow: hidden;
			}
			
			.div-wrapper .vector-2 {
			  position: relative;
			  width: 15px;
			  height: 12px;
			}
			
			.div-wrapper .frame-14 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: flex-start;
			  gap: 13px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-15 {
			  display: inline-flex;
			  flex-direction: column;
			  align-items: center;
			  gap: 30px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .line-2 {
			  position: relative;
			  width: 1170px;
			  height: 1px;
			  margin-top: -0.5px;
			}
			
			.div-wrapper .frame-16 {
			  display: inline-flex;
			  align-items: flex-start;
			  gap: 20px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-17 {
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-18 {
			  display: inline-flex;
			  align-items: flex-start;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .frame-19 {
			  position: relative;
			  width: 40px;
			  height: 40px;
			}
			
			.div-wrapper .text-wrapper-9 {
			  left: 16px;
			  color: #202020;
			  position: absolute;
			  top: 7px;
			  font-family: "Pretendard Variable-Medium", Helvetica;
			  font-weight: 500;
			  font-size: 20px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .text-wrapper-10 {
			  left: 14px;
			  opacity: 0.3;
			  color: #000000;
			  position: absolute;
			  top: 7px;
			  font-family: "Pretendard Variable-Medium", Helvetica;
			  font-weight: 500;
			  font-size: 20px;
			  letter-spacing: 0;
			  line-height: normal;
			  white-space: nowrap;
			}
			
			.div-wrapper .view {
			  position: absolute;
			  width: 1920px;
			  height: 407px;
			  top: 1367px;
			  left: 0;
			  background-color: #ffffff;
			  border-top-width: 1px;
			  border-top-style: solid;
			  border-color: #e4e4e4;
			}
			
			.div-wrapper .text-wrapper-11 {
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
			
			.div-wrapper .text-wrapper-12 {
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
			
			.div-wrapper .text-wrapper-13 {
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
			
			.div-wrapper .text-wrapper-14 {
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
			
			.div-wrapper .text-wrapper-15 {
			  color: #20202080;
			}
			
			.div-wrapper .text-wrapper-16 {
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
			
			.div-wrapper .text-wrapper-17 {
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
			
			.div-wrapper .text-wrapper-18 {
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
			
			.div-wrapper .text-wrapper-19 {
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
			
			.div-wrapper .text-wrapper-20 {
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
			
			.div-wrapper .text-wrapper-21 {
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
			
			.div-wrapper .text-wrapper-22 {
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
			
			.div-wrapper .header {
			  position: fixed;
			  width: 1920px;
			  height: 120px;
			  top: 48px;
			  left: 0;
			}
			
			.div-wrapper .frame-20 {
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
			
			.div-wrapper .frame-21 {
			  display: inline-flex;
			  align-items: flex-start;
			  position: absolute;
			  top: 16px;
			  left: 375px;
			}
			
			.div-wrapper .frame-22 {
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
			
			.div-wrapper .text-wrapper-23 {
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
			
			.div-wrapper .frame-23 {
			  display: inline-flex;
			  align-items: center;
			  justify-content: center;
			  gap: 10px;
			  padding: 20px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .text-wrapper-24 {
			  font-family: "Pretendard Variable-Medium", Helvetica;
			  font-weight: 500;
			  color: #202020cc;
			  font-size: 20px;
			  text-align: center;
			  letter-spacing: 0;
			  line-height: normal;
			  position: relative;
			  width: fit-content;
			  margin-top: -1px;
			  white-space: nowrap;
			}
			
			.div-wrapper .ellipse {
			  position: relative;
			  width: 15px;
			  height: 15px;
			  background-color: #00b267;
			  border-radius: 7.5px;
			}
			
			.div-wrapper .frame-24 {
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
			
			.div-wrapper .text-wrapper-25 {
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
			
			.div-wrapper .frame-wrapper {
			  position: fixed;
			  width: 2100px;
			  height: 48px;
			  top: 0;
			  left: 0;
			  background-color: #4d4d4d;
			}
			
			.div-wrapper .frame-25 {
			  display: inline-flex;
			  align-items: flex-start;
			  position: relative;
			  top: 4px;
			  left: 1407px;
			}
			
			.div-wrapper .frame-26 {
			  display: inline-flex;
			  align-items: center;
			  justify-content: center;
			  gap: 10px;
			  padding: 8px 10px;
			  position: relative;
			  flex: 0 0 auto;
			}
			
			.div-wrapper .text-wrapper-26 {
			  font-family: "Pretendard Variable-Bold", Helvetica;
			  font-weight: 700;
			  color: #ffffff;
			  font-size: 16px;
			  letter-spacing: 0;
			  line-height: 24px;
			  position: relative;
			  width: fit-content;
			  margin-top: -1px;
			  white-space: nowrap;
			}
    </style>
  <script>
	  $(() => {
		    $(".union-wrapper").click(() => {
		        let keyword = $("#search").val();
		        window.location = "./product?cmd=list&type=search&search=" + keyword;
		    });
		});
  </script>
  </head>
  <body>
  <div>

</div>
    <div class="div-wrapper">       
      <div class="overlap-group">
        <p class="text-wrapper">신규가입 최대 30% 할인 이벤트 진행 중!</p>       
        <img class="group" src="resources/img/member/group-2.png" />
        
        <div class="frame">
        	<a href="/moran/member?cmd=joinForm">
        		<div class="div">회원가입 바로가기</div>
        	</a>        	
       </div>
      </div>
      <div class="did-you-know-wrapper">
        <p class="did-you-know">
          🌱 📢&nbsp;&nbsp;배너와 관련된 문구 또는 광고성 멘트 또는 사이트 어쩌구 또는 공지 텍스트 띄우고 싶거나 잘 쓴
          리뷰 같은거 넣어도 좋을 영역. Did you know? .. 식물은 물을 줘야 자라요 등등
        </p>
      </div>
      <div class="frame-2">
        <div class="frame-3">
          <div class="frame-4">
            <div class="text-wrapper-2">이달의 인기 식물</div>
            <img class="line" src="resources/img/member/line-3.svg" />
            <div class="text-wrapper-3">모란모란에서 가장 HOT한 상품들!</div>
          </div>
          <img class="img" src="resources/img/member/line-2.svg" />
        </div>
        <div class="frame-5">
               
	    <div class="frame-18">
	    	    	
			<c:forEach var="product" items="${requestScope.productList}" varStatus="status">
			    <a href="product?cmd=detail&no=${product.getPId()}">
			        <div class="frame-14">
			            <div class="frame-7">
			                <img class="rectangle" src="${requestScope.productImgList[status.index].img}" />
			                <div class="frame-8">
			                    <div class="text-wrapper-4">${status.count}</div>
			                </div>
			            </div>
			            <div class="frame-9">
			                <div class="frame-10">
			                    <div class="text-wrapper-5">${product.name}</div>
			                    <div class="text-wrapper-6">모란모란</div>
			                </div>
			                <div class="text-wrapper-7">${product.price}원</div>
			            </div>
			            <div class="frame-12">
			                <img class="vector" src="resources/img/member/vector-4.svg" />
			                <div class="text-wrapper-8">인기</div>
			            </div>
			        </div>
			    </a>
			</c:forEach>
			 
	    </div>

        </div>
        <div class="frame-15">
          <img class="line-2" src="resources/img/member/line-1.svg" />
 <!--          <div class="frame-16">
            <img class="frame-17" src="resources/img/member/frame-30.svg" />
            <div class="frame-18">
              <div class="frame-19"><div class="text-wrapper-9">1</div></div>
              <div class="frame-19"><div class="text-wrapper-10">2</div></div>
              <div class="frame-19"><div class="text-wrapper-10">3</div></div>
            </div>
            <img class="frame-17" src="resources/img/member/frame-35.svg" />
          </div> -->
			<div class="frame-16">
			    <c:if test="${currentPage > 1}">
			        <a href="main?page=${currentPage - 1}">
			            <img class="frame-17" src="resources/img/member/frame-30.svg" />
			        </a>
			    </c:if>			    
			    <div class="frame-18">
			        <c:forEach var="i" begin="${startPage}" end="${endPage}">
			            <c:choose>
			                <c:when test="${i == currentPage}">
			                    <div class="frame-19"><div class="text-wrapper-9">${i}</div></div>
			                </c:when>
			                <c:otherwise>
			                    <div class="frame-19">
			                        <a href="main?page=${i}"><div class="text-wrapper-9">${i}</div></a>
			                    </div>
			                </c:otherwise>
			            </c:choose>
			        </c:forEach>
			    </div>
			    <c:if test="${currentPage < totalPage}">
			        <a href="main?page=${currentPage + 1}">
			            <img class="frame-17" src="resources/img/member/frame-35.svg" />
			        </a>
			    </c:if>
			</div>          
	
        </div>
      </div>
      
      
      <div class="view">
        <div class="text-wrapper-11">모란모란소개</div>
        <p class="p">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-12">12345) 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-13">Fax : 02-123-4567 / E-mail: moranmoran@moran.com</p>
        <p class="text-wrapper-14">사업자등록번호 : 123-45-67890, 통신판매업신고 : 2024-서울구구-3456</p>
        <p class="UI-copyright">
          <span class="span"
            >모란모란은 통신판매중개자이며 통신판매의 거래당사자가 아닙니다. 따라서 판매자가 등록한 상품•거래•가격
            정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제 및 배포
            등의 행위는 엄격히 금지됩니다.<br
          /></span>
          <span class="text-wrapper-15">Copyright MoranMoran Co. All Rights Reserved.</span>
        </p>
        <div class="text-wrapper-16">사업자정보확인 &gt;</div>
        <div class="text-wrapper-17">모란모란(주)</div>
        <div class="text-wrapper-18">고객센터</div>
        <div class="text-wrapper-19">1234-5678</div>
        <div class="text-wrapper-20">이용약관</div>
        <div class="text-wrapper-21">전자금융거래약관</div>
        <div class="text-wrapper-22">개인정보처리방침</div>
      </div>
		
	

				
	<a href="main"><img class="header" src="resources/img/member/header.svg" /></a>
      <div class="frame-20">
        <div class="frame-21">
          <div class="frame-22"><div class="text-wrapper-23"><a href="main">홈</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24"><a href="board">커뮤니티</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24"><a href="product?cmd=list">스토어</a></div></div>
          <div class="frame-23"><div class="text-wrapper-24">공지</div></div>
          <div class="frame-23">
            <div class="text-wrapper-24"><a href="event">이벤트</a></div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-23"><div class="text-wrapper-24">1:1 문의</div></div>
        </div>
        <div class="frame-24">
          
          <div class="union-wrapper"><img class="union" src="resources/img/member/union.svg" /></div>
          <input id="search" type="text" placeholder="상품 또는 식물 검색하기" style="z-index: 5; left:50px; top:100px; outline: none; border-width: 0; width:380px"/>
        </div>
      </div>
      
      
      

      <c:choose>
		<c:when test="${not empty sessionScope.memberVO}">
			<div class="frame-wrapper">
				<div class="frame-25">
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=myPageForm">마이페이지</a></div></div>
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=logoutOk">로그아웃</a></div></div>
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/cart">장바구니</a></div></div>
				</div>
			</div>				
		</c:when>
		<%-- <c:if test="${not empty sessionScope.memberVO}">    
	    	<p>회원 Email: ${sessionScope.memberVO.email}</p>
	    	<p>회원 pw: ${sessionScope.memberVO.pw}</p>
	    <!-- 기타 회원 정보 출력 -->
		</c:if> --%>
		<c:otherwise>
			<div class="frame-wrapper">
				<div class="frame-25">
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=loginForm">로그인</a></div></div>
					<div class="frame-26"><div class="text-wrapper-26"><a href="/moran/member?cmd=joinForm">회원가입</a></div></div>
				</div>
			</div>
		</c:otherwise>
	   </c:choose>

		

    </div>
  </body>
</html>