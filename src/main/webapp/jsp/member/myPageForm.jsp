<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl function 기능 사용하기 위한 태그라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="stylesheet" href="resources/css/globals.css" />
<style>
<style>
  .modal-title {
    color: #00b267;
  }
  
  .warning {
    background-color: #fff3cd;
    border: 1px solid #ffeeba;
    color: #856404;
    padding: 15px;
    border-radius: 4px;
    margin-bottom: 20px;
  }
  
  .warning h2 {
    color: #856404;
    margin-top: 0;
  }
  
  .modal-body {
    margin-top: 20px;
  }
  
  label {
    display: block;
    margin-bottom: 10px;
    color: #333;
  }
  
  textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 20px;
    resize: vertical;
  }
  
  .btn-primary {
    background-color: #00b267;
    border-color: #00b267;
  }
  
  .btn-primary:hover {
    background-color: #008c4d;
    border-color: #008c4d;
  }

a {  	
	text-align: center !important;
	text-decoration: none !important ; /* 링크의 밑줄 제거 */  
	color: inherit !important ; /* 링크의 색상 제거 */
}
 		
:root {
	--colors-light-green: rgba(118, 176, 156, 1);
	--colors-mint: rgba(140, 215, 144, 1);
}

.div-wrapper {
	position: relative;
	width: 1920px;
	height: 3075px;
	background-color: #ffffff;
	overflow: hidden;
}

.div-wrapper .header {
	position: absolute;
	width: 1920px;
	height: 120px;
	top: 48px;
	left: 0;
	background-color: #ffffff;
	border-top-style: none;
	border-right-style: none;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	border-left-style: none;
	border-color: #e4e4e4;
}

.div-wrapper .group {
	position: absolute;
	width: 121px;
	height: 41px;
	top: 39px;
	left: 899px;
}

.div-wrapper .overlap-wrapper {
	position: absolute;
	width: 49px;
	height: 47px;
	top: 33px;
	left: 1506px;
}

.div-wrapper .overlap {
	position: relative;
	height: 47px;
}

.div-wrapper .frame {
	position: absolute;
	width: 40px;
	height: 40px;
	top: 7px;
	left: 0;
	background-color: #ffffff;
	border-radius: 8.33px;
	overflow: hidden;
	border: 0.42px solid;
	border-color: #cdcdcd;
	box-shadow: 0px 0px 4px #00000040;
}

.div-wrapper .overlap-group-wrapper {
	position: relative;
	width: 17px;
	height: 23px;
	top: 9px;
	left: 12px;
}

.div-wrapper .overlap-group {
	position: relative;
	width: 20px;
	height: 25px;
	top: -2px;
	left: -2px;
}

.div-wrapper .union {
	position: absolute;
	width: 20px;
	height: 22px;
	top: 0;
	left: 0;
}

.div-wrapper .subtract {
	position: absolute;
	width: 6px;
	height: 5px;
	top: 20px;
	left: 7px;
}

.div-wrapper .div {
	display: inline-flex;
	align-items: flex-start;
	gap: 10px;
	position: absolute;
	top: 0;
	left: 28px;
}

.div-wrapper .ellipse {
	position: relative;
	width: 21px;
	height: 21px;
	background-color: #ff0000;
	border-radius: 10.5px;
}

.div-wrapper .text-wrapper {
	position: absolute;
	top: 4px;
	left: 4px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #ffffff;
	font-size: 12px;
	letter-spacing: 0;
	line-height: 12px;
	white-space: nowrap;
}

.div-wrapper .frame-2 {
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

.div-wrapper .frame-3 {
	display: inline-flex;
	align-items: flex-start;
	position: absolute;
	top: 16px;
	left: 375px;
}

.div-wrapper .frame-4 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-2 {
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

.div-wrapper .ellipse-2 {
	position: relative;
	width: 15px;
	height: 15px;
	background-color: #00b267;
	border-radius: 7.5px;
}

.div-wrapper .frame-5 {
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

.div-wrapper .text-wrapper-3 {
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

.div-wrapper .img {
	position: absolute;
	width: 18px;
	height: 18px;
	top: 3px;
	left: 2px;
}

.div-wrapper .frame-wrapper {
	position: absolute;
	width: 1920px;
	height: 48px;
	top: 0;
	left: 0;
	background-color: #4d4d4d;
}

.div-wrapper .frame-6 {
	display: inline-flex;
	align-items: center;
	justify-content: flex-end;
	position: relative;
	top: 4px;
	left: 1285px;
}

.div-wrapper .frame-7 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 8px 10px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-4 {
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

.div-wrapper .frame-8 {
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

.div-wrapper .overlap-2 {
	position: absolute;
	width: 1170px;
	height: 64px;
	top: 288px;
	left: 375px;
}

.div-wrapper .group-2 {
	position: absolute;
	width: 89px;
	height: 30px;
	top: 29px;
	left: 16px;
}

.div-wrapper .frame-9 {
	position: absolute;
	width: 1170px;
	height: 64px;
	top: 0;
	left: 0;
}

.div-wrapper .frame-10 {
	display: inline-flex;
	align-items: center;
	gap: 16px;
	position: absolute;
	top: 0;
	left: 0;
}

.div-wrapper .text-wrapper-5 {
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

.div-wrapper .p {
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

.div-wrapper .line-2 {
	position: absolute;
	width: 1170px;
	height: 1px;
	top: 64px;
	left: 0;
}

.div-wrapper .view {
	position: absolute;
	width: 1920px;
	height: 407px;
	top: 2668px;
	left: 0;
	background-color: #ffffff;
	border-top-width: 1px;
	border-top-style: solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-6 {
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

.div-wrapper .text-wrapper-7 {
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

.div-wrapper .text-wrapper-8 {
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

.div-wrapper .text-wrapper-9 {
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

.div-wrapper .text-wrapper-10 {
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

.div-wrapper .text-wrapper-11 {
	color: #20202080;
}

.div-wrapper .text-wrapper-12 {
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

.div-wrapper .text-wrapper-13 {
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

.div-wrapper .text-wrapper-14 {
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

.div-wrapper .text-wrapper-15 {
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

.div-wrapper .text-wrapper-16 {
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

.div-wrapper .text-wrapper-17 {
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

.div-wrapper .text-wrapper-18 {
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

.div-wrapper .frame-11 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 30px;
	position: absolute;
	top: 392px;
	left: 1145px;
}

.div-wrapper .frame-12 {
	display: inline-flex;
	align-items: center;
	gap: 247px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-19 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #000000;
	font-size: 20px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-20 {
	position: relative;
	width: fit-content;
	opacity: 0.5;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.div-wrapper .frame-13 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 20px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-14 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 12px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-21 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-15 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px;
	position: relative;
	flex: 0 0 auto;
	background-color: #ffffff;
}

.div-wrapper .text-wrapper-22 {
	position: relative;
	width: 380px;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500; 000000
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
}

.div-wrapper .frame-16 {
	display: inline-flex;
	align-items: center;
	gap: 10px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-17 {
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

.div-wrapper .text-wrapper-23 {
	position: relative;
	width: 200px;
	height: 20px;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #00000033;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-18 {
	display: flex;
	width: 170px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 10px;
	position: relative;
	background-color: #00B368;
	border: none;
	border-color: #20202080;
}

.div-wrapper .text-wrapper-24 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	margin-left: -41.5px;
	margin-right: -41.5px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #ffffff;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
	border: none;
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
	padding: 10px 71px;
	position: relative;
	flex: 0 0 auto;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-25 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	opacity: 0.2;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-21 {
	display: inline-flex;
	flex-direction: column;
	align-items: center;
	gap: 30px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .view-2 {
	display: flex;
	width: 400px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px 148px;
	position: relative;
	flex: 0 0 auto;
	background-color: #00B368;
}

.div-wrapper .text-wrapper-26 {
	position: relative;
	width: fit-content;
	margin-top: -1px;
	margin-left: -30px;
	font-family: "Pretendard Variable-Bold", Helvetica;
	font-weight: 700;
	color: #ffffff;
	font-size: 20px;
	text-align: center;
	letter-spacing: 0;
	line-height: 20px;
	white-space: nowrap;
}

.div-wrapper .frame-22 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 60px;
	position: absolute;
	top: 392px;
	left: 375px;
}

.div-wrapper .frame-23 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 30px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-24 {
	display: inline-flex;
	align-items: center;
	gap: 74px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-27 {
	position: relative;
	width: 530px;
	height: 24px;
	margin-top: -1px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #000000;
	font-size: 20px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.div-wrapper .text-wrapper-28 {
	position: relative;
	width: fit-content;
	opacity: 0.5;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 16px;
	text-align: right;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.div-wrapper .frame-25 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-26 {
	display: inline-flex;
	align-items: flex-start;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-27 {
	display: inline-flex;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px;
	position: relative;
	flex: 0 0 auto;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-left: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-29 {
	position: relative;
	width: 490px;
	margin-top: -0.5px;
	opacity: 0.5;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: 20px;
}

.div-wrapper .frame-28 {
	display: inline-flex;
	height: 62px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	padding: 20px 31px;
	position: relative;
	flex: 0 0 auto;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-right: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-30 {
	position: relative;
	width: fit-content;
	opacity: 0.5;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.div-wrapper .frame-29 {
	display: flex;
	width: 670px;
	align-items: flex-start;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-30 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 10px;
	padding: 20px;
	position: relative;
	flex: 0 0 auto;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-left: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .frame-31 {
	display: inline-flex;
	align-items: flex-start;
	gap: 20px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .rectangle {
	position: relative;
	width: 70px;
	height: 70px;
	background-color: #d9d9d9;
}

.div-wrapper .frame-32 {
	display: inline-flex;
	flex-direction: column;
	align-items: flex-start;
	gap: 8px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-31 {
	position: relative;
	width: 400px;
	height: 24px;
	margin-top: -1px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.div-wrapper .frame-33 {
	display: inline-flex;
	align-items: flex-start;
	gap: 8px;
	position: relative;
	flex: 0 0 auto;
	opacity: 0.5;
}

.div-wrapper .text-wrapper-32 {
	width: fit-content;
	color: #000000;
	font-size: 12px;
	text-align: center;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
	position: relative;
	margin-top: -1px;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
}

.div-wrapper .text-wrapper-33 {
	position: relative;
	width: fit-content;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: 16px;
	white-space: nowrap;
}

.div-wrapper .frame-34 {
	display: flex;
	width: 142px;
	height: 112px;
	align-items: center;
	justify-content: center;
	gap: 10px;
	position: relative;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-right: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-34 {
	position: relative;
	width: fit-content;
	margin-left: -5.5px;
	margin-right: -3.5px;
	opacity: 0.5;
	font-family: "Pretendard Variable-Medium", Helvetica;
	font-weight: 500;
	color: #000000;
	font-size: 14px;
	letter-spacing: 0;
	line-height: normal;
}

.div-wrapper .frame-35 {
	display: inline-flex;
	flex-direction: column;
	gap: 36px;
	align-items: flex-start;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-36 {
	display: flex;
	flex-direction: column;
	width: 672px;
	align-items: flex-start;
	gap: 8px;
	padding: 17px 15px;
	position: relative;
	flex: 0 0 auto;
	margin-top: -1px;
	margin-left: -1px;
	margin-right: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .text-wrapper-35 {
	position: relative;
	width: 621px;
	height: 24px;
	margin-top: -0.5px;
	font-family: "Pretendard Variable-SemiBold", Helvetica;
	font-weight: 600;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 24px;
	white-space: nowrap;
}

.div-wrapper .frame-37 {
	display: flex;
	width: 635px;
	align-items: flex-start;
	gap: 8px;
	position: relative;
	flex: 0 0 auto;
	opacity: 0.5;
}

.div-wrapper .text-wrapper-36 {
	position: relative;
	width: 630px;
	height: 19px;
	margin-top: -1px;
	font-family: "Pretendard Variable-Regular", Helvetica;
	font-weight: 400;
	color: #000000;
	font-size: 16px;
	letter-spacing: 0;
	line-height: normal;
	white-space: nowrap;
}

.div-wrapper .frame-38 {
	display: inline-flex;
	align-items: flex-start;
	gap: 16px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-39 {
	display: inline-flex;
	align-items: flex-start;
	gap: 4px;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .text-wrapper-37 {
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

.div-wrapper .frame-40 {
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

.div-wrapper .text-wrapper-38 {
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

.div-wrapper .text-wrapper-39 {
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

.div-wrapper .frame-41 {
	display: flex;
	flex-direction: column;
	width: 672px;
	gap: 8px;
	padding: 17px 15px;
	margin-left: -1px;
	margin-right: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
	align-items: flex-start;
	position: relative;
	flex: 0 0 auto;
}

.div-wrapper .frame-42 {
	display: flex;
	flex-direction: column;
	width: 672px;
	align-items: flex-start;
	gap: 8px;
	padding: 17px 15px;
	position: relative;
	flex: 0 0 auto;
	margin-bottom: -1px;
	margin-left: -1px;
	margin-right: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}

.div-wrapper .frame-43 {
	display: flex;
	flex-direction: column;
	width: 672px;
	align-items: flex-start;
	gap: 10px;
	padding: 20px;
	position: relative;
	margin-top: -1px;
	margin-bottom: -1px;
	margin-left: -1px;
	margin-right: -1px;
	background-color: #ffffff;
	border: 1px solid;
	border-color: #e4e4e4;
}
</style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	$(document).ready(function() {
		let btn = document.getElementById("zipBtn");		
		btn.onclick = openKakaoPostCode; // openKakaoPostCode함수를 실행

		$("#submitBtn").click(function() {
			Swal.fire({
	            icon: 'success',                         // Alert 타입
	            title: '회원정보 수정 완료',         // Alert 제목
	            text: '오예',  // Alert 내용
	        });
			//alert("회원정보 수정 완료");
		});

		
	});	
	
	function openKakaoPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색 결과 항목을 클릭했을때
				// 실행할 코드를 작성하는 부분
				console.log("팝업에서 검색 버튼 눌림");
				console.dir(data);

				document.getElementById("zipcode").value = data.zonecode;
				document.getElementById("addr1").value = data.roadAddress;
				//document.getElementById("addr2").value = data.jibunAddress;
			}
		}).open();
	}
</script>

</head>


<body>
	<div class="div-wrapper">
		<header class="header">
			<a href="main"><img class="group"
				src="resources/img/member/group-1.png" /></a>
		</header>
		<div class="frame-2">
			<div class="frame-3">
				<div class="frame-4">
					<div class="text-wrapper-2">
						<a href="main">홈</a>
					</div>
				</div>
				<div class="frame-4">
					<div class="text-wrapper-2">
						<a href="board">커뮤니티</a>
					</div>
				</div>
				<div class="frame-4">
					<div class="text-wrapper-2">
						<a href="product?cmd=list">스토어</a>
					</div>
				</div>
				<div class="frame-4">
					<div class="text-wrapper-2">공지</div>
				</div>
				<div class="frame-4">
					<div class="text-wrapper-2">
						<a href="event">이벤트</a>
					</div>
					<div class="ellipse-2"></div>
				</div>
				<div class="frame-4">
					<div class="text-wrapper-2">1:1 문의</div>
				</div>
			</div>
			<div class="frame-5">
				<div class="text-wrapper-3">상품 또는 식물 검색하기</div>
				<div class="union-wrapper">
					<img class="img" src="resources/img/member/union.svg" />
				</div>
			</div>
		</div>
		<div class="frame-wrapper">
			<div class="frame-6">
				<div class="frame-7">
					<div class="text-wrapper-4">
						<a href="member?cmd=myPageForm">내 정보</a>
					</div>
				</div>
				<div class="frame-7">
					<div class="text-wrapper-4">
						<a href="member?cmd=logoutOk">로그아웃</a>
					</div>
				</div>
				<div class="frame-8">
					<div class="text-wrapper-4"><a href="/moran/cart">장바구니</a></div>
				</div>
			</div>
		</div>
		<div class="overlap-2">
			<img class="group-2" src="resources/img/member/group-2.png" />
			<div class="frame-9">
				<div class="frame-10">
					<div class="text-wrapper-5">마이 페이지</div>
					<img class="line" src="img/line-3.svg" />
					<p class="p">내 활동 및 정보를 관리하세요</p>
				</div>
				<img class="line-2" src="resources/img/member/line-2.svg" />
			</div>
		</div>
		<div class="view">
			<div class="text-wrapper-6">모란모란소개</div>
			<p class="text-wrapper-7">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel
				: 1234-5678</p>
			<p class="text-wrapper-8">12345) 서울특별시 모란구 모란동 123, Tel :
				1234-5678</p>
			<p class="text-wrapper-9">Fax : 02-123-4567 / E-mail:
				moranmoran@moran.com</p>
			<p class="text-wrapper-10">사업자등록번호 : 123-45-67890, 통신판매업신고 :
				2024-서울구구-3456</p>
			<p class="UI-copyright">
				<span class="span">모란모란은 통신판매중개자이며 통신판매의 거래당사자가
					아닙니다. 따라서 판매자가 등록한 상품•거래•가격 정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든
					정보, 콘텐츠, UI 등에 대한 무단 복제 및 배포 등의 행위는 엄격히 금지됩니다.<br />
				</span> <span class="text-wrapper-11">Copyright MoranMoran Co. All
					Rights Reserved.</span>
			</p>
			<div class="text-wrapper-12">사업자정보확인 &gt;</div>
			<div class="text-wrapper-13">모란모란(주)</div>
			<div class="text-wrapper-14">고객센터</div>
			<div class="text-wrapper-15">1234-5678</div>
			<div class="text-wrapper-16">이용약관</div>
			<div class="text-wrapper-17">전자금융거래약관</div>
			<div class="text-wrapper-18">개인정보처리방침</div>
		</div>
		<div class="frame-11">
			<div class="frame-12">
				<div class="text-wrapper-19">회원정보</div>
				<div class="text-wrapper-20">로그아웃</div>
			</div>



			<form action="member" method="post">
				<div class="frame-13">
					<div class="frame-14">
						<label for="email" class="text-wrapper-21">이메일</label>
						<div class="frame-15">
							<input type="email" id="email" name="email"
								class="text-wrapper-22" value="${sessionScope.memberVO.email}"
								readonly="readonly"
								style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
						</div>
					</div>
					<div class="frame-14">
						<label for="zipcode" class="text-wrapper-21" >우편번호</label>
						<div class="frame-16">
							<div class="frame-17">
								<input type="text" id="zipcode" name="zipcode"
									class="text-wrapper-23"
									value="${sessionScope.memberVO.addressVO.zipcode}"
									style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
							</div>
							<div class="frame-18">
								<button type="button" id="zipBtn" class="text-wrapper-24"
									style="background: #00B368; width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">우편번호
									찾기</button>
							</div>
						</div>
					</div>
					<div class="frame-14">
						<label for="address" class="text-wrapper-21">주소</label>
						<div class="frame-17">
							<input type="text" id="addr1" name="addr1"
								class="text-wrapper-22"
								value="${sessionScope.memberVO.addressVO.addr1}"
								style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
						</div>
						<div class="frame-17">
							<input type="text" id="addr2" name="addr2"
								class="text-wrapper-22"
								value="${sessionScope.memberVO.addressVO.addr2}"
								style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
						</div>
					</div>
					<div class="frame-14">
						<label for="name" class="text-wrapper-21">이름</label>
						<div class="frame-17">
							<input type="text" id="name" name="name" class="text-wrapper-22"
								value="${sessionScope.memberVO.name}"
								style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
						</div>
					</div>
					<div class="frame-14">
						<label for="phone" class="text-wrapper-21">연락처</label>
						<div class="frame-17">
							<input type="tel" id="phone" name="phone" class="text-wrapper-22"
								value="${sessionScope.memberVO.phone}"
								style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
						</div>
					</div>
					<div class="frame-14">
						<label for="birthday" class="text-wrapper-21">생년월일</label>
						<div class="frame-17">
							<input type="text" id="birth" name="birth"
								class="text-wrapper-22" value="${sessionScope.memberVO.birth}"
								style="width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">
						</div>
					</div>
					<div class="frame-14">
						<span class="text-wrapper-21">성별</span>
						<div class="frame-19">
							<div class="frame-20">
								<input type="radio" id="male" name="gender" value="male"
									${sessionScope.memberVO.gender == 'male' ? 'checked' : ''}>
								<label for="male" class="text-wrapper-25">남성</label>
							</div>
							<div class="frame-20">
								<input type="radio" id="female" name="gender" value="female"
									${sessionScope.memberVO.gender == 'female' ? 'checked' : ''}>
								<label for="female" class="text-wrapper-25">여성</label>
							</div>
						</div>
					</div>
				</div>
				<div class="frame-21">
					<div class="view-2">
						<input type="hidden" name="cmd" value="modifyMemberOk" />
						<button type="submit" id="submitBtn" class="text-wrapper-26"
							style="background: #00B368;width: 100%; height: 100%; border: none; background-color: transparent; padding: 0;">변경
							사항 저장하기</button>
					</div>
					
				</div>
			</form>
			<div>
				
				<button type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop" style= "border: 0; background-color: transparent;" >
  						회원탈퇴
				</button>
			</div>
		</div>
		
		<!-- 회원 탈퇴 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">회원 탈퇴</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <form action="member" method="post">
	        <div class="modal-body">
	          <div class="warning">
	            <h2>회원탈퇴 시 게시물 관리</h2>
	            <p>회원탈퇴 후 푸르다마켓 서비스에 입력한 게시물 및 댓글은 삭제되지 않으며, 회원정보 삭제로 인해 작성자 본인을 확인할 수 없으므로 게시물 편집 및 삭제 처리가 원천적으로 불가능 합니다. 게시물 삭제를 원하시는 경우에는 먼저 해당 게시물을 삭제 하신 후, 탈퇴를 신청하시기 바랍니다.</p>
	          </div>
	          <label for="reason">탈퇴 사유:</label>
	          <textarea id="reason" name="reason" rows="4" required></textarea>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
	          <input type="hidden" name="cmd" value="deleteMemberOk" />
	          <button type="submit" class="btn btn-primary">탈퇴하기</button>
	        </div>
	      </form>
	    </div>
	  </div>
	</div>

		<div class="frame-22">
			<div class="frame-23">
				<div class="frame-24">
					<div class="text-wrapper-27">주문 내역</div>
					<div class="text-wrapper-28">상세보기&gt;</div>
				</div>
				<div class="frame-25">

					<div class="frame-26">
						<div class="frame-27">
							<div class="text-wrapper-29">상품정보</div>
						</div>
						<div class="frame-28">
							<div class="text-wrapper-30">주문/배송상태</div>
						</div>
					</div>
					
					
				<c:choose>
					<c:when test="${not empty requestScope.orderList && requestScope.orderList.size() > 0 }">
						<c:forEach var="i" begin="0" end="${Math.min(requestScope.orderList.size()-1, 4)}">
							<div class="frame-29">
								<div class="frame-30">
									<div class="frame-31">
										<div class="rectangle"><img src="${requestScope.orderList.get(i).img}" alt="" width="70px;" height="70px;" /></div>
										<div class="frame-32">
											<div class="text-wrapper-31">${requestScope.orderList.get(i).pdName}</div>
											<div class="frame-33">
												<div class="text-wrapper-32">${requestScope.orderList.get(i).pdId}</div>
												<div class="text-wrapper-32">${requestScope.orderList.get(i).date}</div>
											</div>
											<div class="text-wrapper-33">${requestScope.orderList.get(i).total}원 / 수량 ${requestScope.orderList.get(i).cnt}개</div>
										</div>
									</div>
								</div>
								<div class="frame-34">
									<div class="text-wrapper-30">배송중</div>
								</div>
							</div>
						</c:forEach>
					</c:when>
					
					<c:otherwise>
						<div class="frame-29">
							<div class="text-wrapper-35">주문 내역이 없습니다</div>
						</div>
					</c:otherwise>
				</c:choose>	
					
					
					
					

				</div>
			</div>
			<div class="frame-35">
				<div class="frame-24">
					<div class="text-wrapper-27">내가 쓴 글</div>
					<div class="text-wrapper-28">전체보기&gt;</div>
				</div>

				<div class="frame-25">				
				<c:choose>				
					<c:when test="${not empty requestScope.boardList && requestScope.boardList.size() > 0 }">
						<c:forEach var="i" begin="0" end="${Math.min(requestScope.boardList.size()-1, 4)}">
							<div class="frame-36">
								<div class="text-wrapper-35">${requestScope.boardList.get(i).get("title")}</div>
								<div class="frame-37">
									<div class="text-wrapper-36">
										<c:choose>
											<c:when test="${requestScope.boardList.get(i).get('contents').length()>10 }">
												${fn:substring(requestScope.boardList.get(i).get("contents"),0,10)} ......
											</c:when>
											<c:otherwise>
												${requestScope.boardList.get(i).get("contents")}												
											</c:otherwise>											
										</c:choose>																				
									</div>
								</div>
								<div class="frame-38">
									<div class="frame-39">
										<div class="text-wrapper-37">공감</div>
										<div class="frame-39">
											<div class="frame-40">
												<div class="rectangle-2"></div>
												<img class="vector-2" src="img/vector-9.svg" />
											</div>
											<div class="text-wrapper-37">20</div>
										</div>
									</div>
									<div class="frame-39">
										<div class="text-wrapper-38">댓글</div>
										<div class="frame-39">
											<div class="frame-40">
												<div class="rectangle-2"></div>
												<img class="vector-3" src="img/image.svg" />
											</div>
											<div class="text-wrapper-38">${requestScope.boardList.get(i).get("count")}</div>
										</div>
									</div>
									<div class="frame-39">
										<div class="text-wrapper-39">${requestScope.boardList.get(i).get("regDate")}</div>
										<div class="text-wrapper-39">22:58</div>
									</div>
								</div>
							</div>
						</c:forEach>					
					</c:when>
					<c:otherwise>
						<div class="frame-36">
							<div class="text-wrapper-35">게시글이 없습니다.</div>
						</div>
					</c:otherwise>
				</c:choose>
				



				</div>
				<div class="frame-35">
					<div class="frame-24">
						<div class="text-wrapper-27">내가 찜한 상품</div>
						<div class="text-wrapper-28">전체보기&gt;</div>
					</div>
					<div class="frame-25">
						<div class="frame-29">
							<div class="frame-43">
								<div class="frame-31">
									<div class="rectangle"></div>
									<div class="frame-32">
										<div class="text-wrapper-31">상품이름상품이름</div>
										<div class="frame-33">
											<div class="text-wrapper-32">판매스토어명</div>
										</div>
										<div class="text-wrapper-33">000,000원</div>
									</div>
								</div>
							</div>
						</div>
						<div class="frame-29">
							<div class="frame-43">
								<div class="frame-31">
									<div class="rectangle"></div>
									<div class="frame-32">
										<div class="text-wrapper-31">상품이름상품이름</div>
										<div class="frame-33">
											<div class="text-wrapper-32">판매스토어명</div>
										</div>
										<div class="text-wrapper-33">000,000원</div>
									</div>
								</div>
							</div>
						</div>
						<div class="frame-29">
							<div class="frame-43">
								<div class="frame-31">
									<div class="rectangle"></div>
									<div class="frame-32">
										<div class="text-wrapper-31">상품이름상품이름</div>
										<div class="frame-33">
											<div class="text-wrapper-32">판매스토어명</div>
										</div>
										<div class="text-wrapper-33">000,000원</div>
									</div>
								</div>
							</div>
						</div>
						<div class="frame-29">
							<div class="frame-43">
								<div class="frame-31">
									<div class="rectangle"></div>
									<div class="frame-32">
										<div class="text-wrapper-31">상품이름상품이름</div>
										<div class="frame-33">
											<div class="text-wrapper-32">판매스토어명</div>
										</div>
										<div class="text-wrapper-33">000,000원</div>
									</div>
								</div>
							</div>
						</div>
						<div class="frame-29">
							<div class="frame-43">
								<div class="frame-31">
									<div class="rectangle"></div>
									<div class="frame-32">
										<div class="text-wrapper-31">상품이름상품이름</div>
										<div class="frame-33">
											<div class="text-wrapper-32">판매스토어명</div>
										</div>
										<div class="text-wrapper-33">000,000원</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
</body>
</html>