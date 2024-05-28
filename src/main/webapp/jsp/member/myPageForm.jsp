<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="resources/css/globals.css" />
    
    <style>
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
		  width: 50px;
		  height: 50px;
		  top: -13.8px;
		  left: -15px;
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
		  font-family: "Pretendard-Bold", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Bold", Helvetica;
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
		  font-family: "Pretendard-SemiBold", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Bold", Helvetica;
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
		  font-family: "Pretendard-Bold", Helvetica;
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
		  font-family: "Pretendard-Bold", Helvetica;
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
		  font-family: "Pretendard-Bold", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #202020;
		  font-size: 20px;
		  letter-spacing: 0;
		  line-height: 24px;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-11 {
		  display: inline-flex;
		  align-items: center;
		  gap: 500px;
		  position: absolute;
		  top: 392px;
		  left: 375px;
		}
		
		.div-wrapper .text-wrapper-19 {
		  position: relative;
		  width: fit-content;
		  margin-top: -1px;
		  font-family: "Pretendard-SemiBold", Helvetica;
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
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  text-align: right;
		  letter-spacing: 0;
		  line-height: normal;
		  white-space: nowrap;
		  
		}
		
		.div-wrapper .frame-12 {
		  display: inline-flex;
		  align-items: center;
		  gap: 493px;
		  position: absolute;
		  top: 1122px;
		  left: 375px;
		}
		
		.div-wrapper .overlap-3 {
		  position: absolute;
		  width: 670px;
		  height: 500px;
		  top: 1176px;
		  left: 375px;
		  background-color: #ffffff;
		  border: 1px solid;
		  border-color: #e4e4e4;
		}
		
		.div-wrapper .text-wrapper-21 {
		  position: absolute;
		  top: 163px;
		  left: 264px;
		  opacity: 0.5;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: normal;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-13 {
		  display: inline-flex;
		  align-items: center;
		  gap: 490px;
		  position: absolute;
		  top: 1700px;
		  left: 375px;
		}
		
		.div-wrapper .text-wrapper-22 {
		  position: relative;
		  width: 150px;
		  margin-top: -1px;
		  font-family: "Pretendard-SemiBold", Helvetica;
		  font-weight: 600;
		  color: #000000;
		  font-size: 20px;
		  letter-spacing: 0;
		  line-height: normal;
		}
		
		.div-wrapper .overlap-4 {
		  position: absolute;
		  width: 670px;
		  height: 500px;
		  top: 1754px;
		  left: 375px;
		  background-color: #ffffff;
		  border: 1px solid;
		  border-color: #e4e4e4;
		}
		
		.div-wrapper .text-wrapper-23 {
		  position: absolute;
		  top: 239px;
		  left: 264px;
		  opacity: 0.5;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: normal;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-14 {
		  display: inline-flex;
		  flex-direction: column;
		  align-items: flex-start;
		  gap: 30px;
		  position: absolute;
		  top: 392px;
		  left: 1145px;
		}
		
		.div-wrapper .frame-15 {
		  display: inline-flex;
		  align-items: center;
		  gap: 247px;
		  position: relative;
		  flex: 0 0 auto;
		}
		
		.div-wrapper .text-wrapper-24 {
		  position: relative;
		  width: fit-content;
		  opacity: 0.5;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: normal;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-16 {
		  display: inline-flex;
		  flex-direction: column;
		  align-items: flex-start;
		  gap: 20px;
		  position: relative;
		  flex: 0 0 auto;
		}
		
		.div-wrapper .frame-17 {
		  display: inline-flex;
		  flex-direction: column;
		  align-items: flex-start;
		  gap: 12px;
		  position: relative;
		  flex: 0 0 auto;
		}
		
		.div-wrapper .text-wrapper-25 {
		  position: relative;
		  width: fit-content;
		  margin-top: -1px;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: 20px;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-18 {
		  display: inline-flex;
		  align-items: center;
		  justify-content: center;
		  gap: 10px;
		  padding: 10px;
		  position: relative;
		  flex: 0 0 auto;
		  background-color: #ffffff;
		}
		
		.div-wrapper .text-wrapper-26 {
		  position: relative;
		  width: 380px;
		  margin-top: -1px;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #00000033;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: 20px;
		}
		
		.div-wrapper .frame-19 {
		  display: inline-flex;
		  align-items: center;
		  gap: 10px;
		  position: relative;
		  flex: 0 0 auto;
		}
		
		.div-wrapper .frame-20 {
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
		
		.div-wrapper .text-wrapper-27 {
		  position: relative;
		  width: 200px;
		  height: 20px;
		  margin-top: -1px;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #00000033;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: 20px;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-21 {
		  display: flex;
		  width: 170px;
		  align-items: center;
		  justify-content: center;
		  gap: 10px;
		  padding: 10px 83px;
		  position: relative;
		  background-color: #e4e4e4;
		  border: 1px solid;
		  border-color: #20202080;
		}
		
		.div-wrapper .text-wrapper-28 {
		  position: relative;
		  width: fit-content;
		  margin-top: -1px;
		  margin-left: -41.5px;
		  margin-right: -41.5px;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: 20px;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-22 {
		  display: inline-flex;
		  align-items: flex-start;
		  gap: 11px;
		  position: relative;
		  flex: 0 0 auto;
		}
		
		.div-wrapper .frame-23 {
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
		
		.div-wrapper .text-wrapper-29 {
		  position: relative;
		  width: fit-content;
		  margin-top: -1px;
		  opacity: 0.2;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 16px;
		  letter-spacing: 0;
		  line-height: 20px;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-24 {
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
		  background-color: #20202033;
		}
		
		.div-wrapper .text-wrapper-30 {
		  position: relative;
		  width: fit-content;
		  margin-top: -1px;
		  margin-left: -22px;
		  margin-right: -22px;
		  font-family: "Pretendard-Bold", Helvetica;
		  font-weight: 700;
		  color: #ffffff;
		  font-size: 20px;
		  text-align: center;
		  letter-spacing: 0;
		  line-height: 20px;
		  white-space: nowrap;
		}
		
		.div-wrapper .frame-25 {
		  display: inline-flex;
		  flex-direction: column;
		  align-items: flex-start;
		  position: absolute;
		  top: 446px;
		  left: 375px;
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
		
		.div-wrapper .text-wrapper-31 {
		  position: relative;
		  width: 490px;
		  margin-top: -0.5px;
		  opacity: 0.5;
		  font-family: "Pretendard-Medium", Helvetica;
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
		  padding: 20px 25px;
		  position: relative;
		  flex: 0 0 auto;
		  margin-top: -1px;
		  margin-bottom: -1px;
		  margin-right: -1px;
		  background-color: #ffffff;
		  border: 1px solid;
		  border-color: #e4e4e4;
		}
		
		.div-wrapper .text-wrapper-32 {
		  position: relative;
		  width: fit-content;
		  opacity: 0.5;
		  font-family: "Pretendard-Medium", Helvetica;
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
		
		.div-wrapper .text-wrapper-33 {
		  position: relative;
		  width: 400px;
		  height: 24px;
		  margin-top: -1px;
		  font-family: "Pretendard-SemiBold", Helvetica;
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
		
		.div-wrapper .text-wrapper-34 {
		  width: fit-content;
		  color: #000000;
		  font-size: 12px;
		  text-align: center;
		  line-height: normal;
		  white-space: nowrap;
		  position: relative;
		  margin-top: -1px;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  letter-spacing: 0;
		}
		
		.div-wrapper .text-wrapper-35 {
		  position: relative;
		  width: fit-content;
		  font-family: "Pretendard-Medium", Helvetica;
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
		  padding: 46px 30px;
		  position: relative;
		  margin-top: -1px;
		  margin-bottom: -1px;
		  margin-right: -1px;
		  background-color: #ffffff;
		  border: 1px solid;
		  border-color: #e4e4e4;
		}
		
		.div-wrapper .text-wrapper-36 {
		  position: relative;
		  width: fit-content;
		  margin-left: -5.5px;
		  margin-right: -3.5px;
		  opacity: 0.5;
		  font-family: "Pretendard-Medium", Helvetica;
		  font-weight: 500;
		  color: #000000;
		  font-size: 14px;
		  letter-spacing: 0;
		  line-height: normal;
		}    	
    </style>
  </head>
  <body>
    <div class="div-wrapper">
      <header class="header">
        <img class="group" src="resources/img/member/group-1.png" />
        <div class="overlap-wrapper">
          <div class="overlap">
            <div class="frame">
              <div class="overlap-group-wrapper">
                <div class="overlap-group">
                  <img class="union" src="resources/img/member/image.svg" /> <img class="subtract" src="resources/img/member/subtract.svg" />
                </div>
              </div>
            </div>
            <div class="div">
              <div class="ellipse"></div>
              <div class="text-wrapper">10</div>
            </div>
          </div>
        </div>
      </header>
      <div class="frame-2">
        <div class="frame-3">
          <div class="frame-4"><div class="text-wrapper-2">홈</div></div>
          <div class="frame-4"><div class="text-wrapper-2">커뮤니티</div></div>
          <div class="frame-4"><div class="text-wrapper-2">스토어</div></div>
          <div class="frame-4"><div class="text-wrapper-2">공지</div></div>
          <div class="frame-4">
            <div class="text-wrapper-2">이벤트</div>
            <div class="ellipse-2"></div>
          </div>
          <div class="frame-4"><div class="text-wrapper-2">1:1 문의</div></div>
        </div>
        <div class="frame-5">
          <div class="text-wrapper-3">상품 또는 식물 검색하기</div>
          <div class="union-wrapper"><img class="img" src="resources/img/member/union.svg" /></div>
        </div>
      </div>
      <div class="frame-wrapper">
        <div class="frame-6">
          <div class="frame-7"><div class="text-wrapper-4">내 정보</div></div>
          <div class="frame-7"><div class="text-wrapper-4">로그아웃</div></div>
          <div class="frame-8">
            <img class="vector" src="img/vector.svg" />
            <div class="text-wrapper-4">장바구니</div>
            <div class="text-wrapper-4">(1)</div>
          </div>
        </div>
      </div>
      <div class="overlap-2">
        <img class="group-2" src="resources/img/member/group-2.png" />
        <div class="frame-9">
          <div class="frame-10">
            <div class="text-wrapper-5">마이 페이지</div>
            <img class="line" src="resources/img/member/line-3.svg" />
            <p class="p">내 활동 및 정보를 관리하세요</p>
          </div>
          <img class="line-2" src="resources/img/member/line-2.svg" />
        </div>
      </div>
      <div class="view">
        <div class="text-wrapper-6">모란모란소개</div>
        <p class="text-wrapper-7">대표이사 : 홍길동, 주소 : 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-8">12345) 서울특별시 모란구 모란동 123, Tel : 1234-5678</p>
        <p class="text-wrapper-9">Fax : 02-123-4567 / E-mail: moranmoran@moran.com</p>
        <p class="text-wrapper-10">사업자등록번호 : 123-45-67890, 통신판매업신고 : 2024-서울구구-3456</p>
        <p class="UI-copyright">
          <span class="span"
            >모란모란은 통신판매중개자이며 통신판매의 거래당사자가 아닙니다. 따라서 판매자가 등록한 상품•거래•가격
            정보에 대하여 일체 책임을 지지 않습니다.<br />본 사이트의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제 및 배포
            등의 행위는 엄격히 금지됩니다.<br
          /></span>
          <span class="text-wrapper-11">Copyright MoranMoran Co. All Rights Reserved.</span>
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
        <div class="text-wrapper-19">주문 내역</div>
        <div class="text-wrapper-20">상세보기&gt;</div>
      </div>
      <div class="frame-12">
        <div class="text-wrapper-19">내가 쓴 글</div>
        <div class="text-wrapper-20">상세보기&gt;</div>
      </div>
      <div class="overlap-3"><div class="text-wrapper-21">내가 쓴 글이 없습니다.</div></div>
      <div class="frame-13">
        <div class="text-wrapper-22">내가 찜한 상품</div>
        <div class="text-wrapper-20" style=" left: -50; left: -30; right: 61px;">상세보기&gt;</div>
      </div>
      <div class="overlap-4"><div class="text-wrapper-23">내가 쓴 글이 없습니다.</div></div>
      <div class="frame-14">
        <div class="frame-15">
          <div class="text-wrapper-19">회원정보</div>
          <div class="text-wrapper-24">로그아웃</div>
        </div>
        <div class="frame-16">
          <div class="frame-17">
            <div class="text-wrapper-25">이메일</div>
            <div class="frame-18"><div class="text-wrapper-26">moranmoran@moran.com</div></div>
          </div>
          <div class="frame-17">
            <div class="text-wrapper-25">우편번호</div>
            <div class="frame-19">
              <div class="frame-20"><div class="text-wrapper-27">우편번호</div></div>
              <div class="frame-21"><div class="text-wrapper-28">우편번호 찾기</div></div>
            </div>
          </div>
          <div class="frame-17">
            <div class="text-wrapper-25">주소</div>
            <div class="frame-20"><div class="text-wrapper-26">주소</div></div>
            <div class="frame-20"><div class="text-wrapper-26">상세주소</div></div>
          </div>
          <div class="frame-17">
            <div class="text-wrapper-25">이름</div>
            <div class="frame-20"><div class="text-wrapper-26">이름</div></div>
          </div>
          <div class="frame-17">
            <div class="text-wrapper-25">연락처</div>
            <div class="frame-20"><div class="text-wrapper-26">000-0000-0000</div></div>
          </div>
          <div class="frame-17">
            <div class="text-wrapper-25">생년월일</div>
            <div class="frame-20"><div class="text-wrapper-26">000000</div></div>
          </div>
          <div class="frame-17">
            <div class="text-wrapper-25">성별</div>
            <div class="frame-22">
              <div class="frame-23"><div class="text-wrapper-29">남성</div></div>
              <div class="frame-23"><div class="text-wrapper-29">여성</div></div>
            </div>
          </div>
        </div>
        <div class="frame-24">
          <div class="view-2"><div class="text-wrapper-30">변경 사항 저장하기</div></div>
          <div class="text-wrapper-24">회원 탈퇴하기</div>
        </div>
      </div>
      <div class="frame-25">
        <div class="frame-26">
          <div class="frame-27"><div class="text-wrapper-31">상품정보</div></div>
          <div class="frame-28"><div class="text-wrapper-32">주문/배송상태</div></div>
        </div>
        <div class="frame-29">
          <div class="frame-30">
            <div class="frame-31">
              <div class="rectangle"></div>
              <div class="frame-32">
                <div class="text-wrapper-33">상품이름상품이름</div>
                <div class="frame-33">
                  <div class="text-wrapper-34">0000000000</div>
                  <div class="text-wrapper-34">24/00/00</div>
                </div>
                <div class="text-wrapper-35">000,000원 / 수량 00개</div>
              </div>
            </div>
          </div>
          <div class="frame-34"><div class="text-wrapper-32">배송중</div></div>
        </div>
        <div class="frame-29">
          <div class="frame-30">
            <div class="frame-31">
              <div class="rectangle"></div>
              <div class="frame-32">
                <div class="text-wrapper-33">상품이름상품이름</div>
                <div class="frame-33">
                  <div class="text-wrapper-34">0000000000</div>
                  <div class="text-wrapper-34">24/00/00</div>
                </div>
                <div class="text-wrapper-35">000,000원 / 수량 00개</div>
              </div>
            </div>
          </div>
          <div class="frame-34"><div class="text-wrapper-36">주문완료</div></div>
        </div>
        <div class="frame-29">
          <div class="frame-30">
            <div class="frame-31">
              <div class="rectangle"></div>
              <div class="frame-32">
                <div class="text-wrapper-33">상품이름상품이름</div>
                <div class="frame-33">
                  <div class="text-wrapper-34">0000000000</div>
                  <div class="text-wrapper-34">24/00/00</div>
                </div>
                <div class="text-wrapper-35">000,000원 / 수량 00개</div>
              </div>
            </div>
          </div>
          <div class="frame-34"><div class="text-wrapper-32">배송전</div></div>
        </div>
        <div class="frame-29">
          <div class="frame-30">
            <div class="frame-31">
              <div class="rectangle"></div>
              <div class="frame-32">
                <div class="text-wrapper-33">상품이름상품이름</div>
                <div class="frame-33">
                  <div class="text-wrapper-34">0000000000</div>
                  <div class="text-wrapper-34">24/00/00</div>
                </div>
                <div class="text-wrapper-35">000,000원 / 수량 00개</div>
              </div>
            </div>
          </div>
          <div class="frame-34"><div class="text-wrapper-32">배송중</div></div>
        </div>
        <div class="frame-29">
          <div class="frame-30">
            <div class="frame-31">
              <div class="rectangle"></div>
              <div class="frame-32">
                <div class="text-wrapper-33">상품이름상품이름</div>
                <div class="frame-33">
                  <div class="text-wrapper-34">0000000000</div>
                  <div class="text-wrapper-34">24/00/00</div>
                </div>
                <div class="text-wrapper-35">000,000원 / 수량 00개</div>
              </div>
            </div>
          </div>
          <div class="frame-34"><div class="text-wrapper-32">배송중</div></div>
        </div>
      </div>
    </div>
  </body>
</html>