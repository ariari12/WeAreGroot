
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
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
	  position: absolute;
	  width: 1920px;
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
              <img class="img-2" src="img/account-question.svg" />
              <div class="text-wrapper-15">답변을 기다리는 질문</div>
            </div>
            <div class="view-3">
              <img class="img-2" src="img/pencil.svg" />
              <div class="text-wrapper-16">질문하기</div>
            </div>
          </div>
        </div>
        <div class="frame-6">
          <img class="line-2" src="img/line-16.svg" />
          <div class="frame-7">
            <div class="text-wrapper-17">최신순</div>
            <img class="line" src="img/line-17.svg" />
            <div class="text-wrapper-17">인기순</div>
            <img class="line" src="img/line-18.svg" />
            <div class="text-wrapper-17">최근답변순</div>
          </div>
          <img class="line-3" src="img/line-17-2.svg" />
        </div>
        <div class="frame-4">
          <div class="frame-4">
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-6.png" />
                    <img class="rectangle" src="img/rectangle-34626560-7.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-7.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-16.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-24.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-3.png" />
                    <img class="rectangle" src="img/rectangle-34626560-9.png" />
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
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-9.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-25.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-10.png" />
                    <img class="rectangle" src="img/rectangle-34626560-2.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-3.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-11.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-26.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555.png" />
                    <img class="rectangle" src="img/rectangle-34626560-6.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-5.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-2.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-27.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-5.png" />
                    <img class="rectangle" src="img/rectangle-34626560.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-15.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-17.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-28.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-9.png" />
                    <img class="rectangle" src="img/rectangle-34626560-3.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-19.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-12.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-29.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-4.png" />
                    <img class="rectangle" src="img/rectangle-34626560-5.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-13.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-8.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-31.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-8.png" />
                    <img class="rectangle" src="img/image.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-20.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-10.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-32.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-7.png" />
                    <img class="rectangle" src="img/rectangle-34626560-4.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/vector-18.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
            <img class="line-3" src="img/line-33.svg" />
            <div class="frame-8">
              <div class="frame-9">
                <div class="frame-10">
                  <div class="text-wrapper-18">Q.</div>
                  <div class="text-wrapper-19">글제목글제목</div>
                </div>
                <div class="frame-11">
                  <div class="text-wrapper-20">
                    글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용글내용
                  </div>
                  <div class="frame-12">
                    <img class="rectangle" src="img/rectangle-34626555-2.png" />
                    <img class="rectangle" src="img/rectangle-34626560-8.png" />
                  </div>
                </div>
              </div>
              <div class="frame-5">
                <div class="frame-13">
                  <div class="text-wrapper-21">공감</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector" src="img/image.svg" />
                    </div>
                    <div class="text-wrapper-21">20</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-22">답변</div>
                  <div class="frame-13">
                    <div class="frame-14">
                      <div class="rectangle-2"></div>
                      <img class="vector-2" src="img/vector-14.svg" />
                    </div>
                    <div class="text-wrapper-22">13</div>
                  </div>
                </div>
                <div class="frame-13">
                  <div class="text-wrapper-23">23/11/01</div>
                  <div class="text-wrapper-23">22:58</div>
                </div>
              </div>
            </div>
          </div>
          <div class="frame-15">
            <img class="line-4" src="img/line-1.svg" />
            <div class="frame-12">
              <img class="frame-16" src="img/frame-30.svg" />
              <div class="frame-17">
                <div class="div-wrapper"><div class="text-wrapper-24">1</div></div>
                <div class="div-wrapper"><div class="text-wrapper-25">2</div></div>
                <div class="div-wrapper"><div class="text-wrapper-25">3</div></div>
              </div>
              <img class="frame-16" src="img/frame-35.svg" />
            </div>
          </div>
        </div>
      </div>
      <div class="frame-wrapper">
        <div class="frame-18">
          <div class="frame-19"><div class="text-wrapper-26">내 정보</div></div>
          <div class="frame-19"><div class="text-wrapper-26">로그아웃</div></div>
          <div class="frame-20">
            <img class="vector-3" src="img/vector-6.svg" />
            <div class="text-wrapper-26">장바구니</div>
            <div class="text-wrapper-26">(1)</div>
          </div>
        </div>
      </div>
      <div class="view-4">
        <div class="frame-21">
          <div class="q-a-wrapper"><div class="text-wrapper-27">Q&amp;A 게시판</div></div>
          <div class="frame-22"><div class="text-wrapper-28">노하우</div></div>
        </div>
      </div>
      <img class="header" src="./resources/img/header.svg" />
      <div class="frame-23">
        <div class="frame-24">
          <div class="frame-25"><div class="text-wrapper-29">홈</div></div>
          <div class="frame-26"><div class="text-wrapper-30">커뮤니티</div></div>
          <div class="frame-25"><div class="text-wrapper-29">스토어</div></div>
          <div class="frame-25"><div class="text-wrapper-29">공지</div></div>
          <div class="frame-25">
            <div class="text-wrapper-29">이벤트</div>
            <div class="ellipse"></div>
          </div>
          <div class="frame-25"><div class="text-wrapper-29">1:1 문의</div></div>
        </div>
        <div class="frame-27">
          <p class="text-wrapper-31">상품 또는 식물, 커뮤니티 글 검색하기</p>
          <div class="union-wrapper"><img class="union" src="img/union.svg" /></div>
        </div>
      </div>
    </div>
  </body>
</html>