<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <style>
        .order-summary {
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 5px;
        }
        .order-item {
            border: 1px solid #dee2e6;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .payment-section {
            padding: 20px;
            border: 1px solid #dee2e6;
            border-radius: 5px;
            background-color: #f8f9fa;
        }
        .btn-success {
            width: 100%;
        }

        img {
            width: 100px;
            height: 100px;
        }

    </style>
</head>
<body>
    <div class="container mt-5">
        <h3>홈>결제하기</h3>
        <div class="row">
            <!-- 주문 상품 정보 -->
            <div class="col-md-12">
                <h4>주문 상품 정보</h4>
                <div class="order-item d-flex mb-3">
                    <img src="https://cdn.imweb.me/thumbnail/20240505/4abd4b36894c3.jpg" alt="알로카시아" class="mr-3">
                    <div>
                        <div>알로카시아 프라이덱 - 맞춤분갈이</div>
                        <div>1개</div>
                        <div>7,808원 <del>12,200원</del></div>
                        <div>배송비 3,500원</div>
                    </div>
                </div>
                <div class="order-item d-flex mb-3">
                    <img src="https://cdn.imweb.me/thumbnail/20240505/4abd4b36894c3.jpg" alt="드라세나" class="mr-3">
                    <div>
                        <div>드라세나 송오브인디아 - 맞춤 분갈이</div>
                        <div>1개</div>
                        <div>9,656원 <del>14,200원</del></div>
                        <div>배송비 3,500원</div>
                    </div>
                </div>
                <div class="order-item d-flex mb-3">
                    <img src="https://cdn.imweb.me/thumbnail/20240505/4abd4b36894c3.jpg" alt="드라세나" class="mr-3">
                    <div>
                        <div>드라세나 송오브인디아 - 맞춤 분갈이</div>
                        <div>1개</div>
                        <div>9,656원 <del>14,200원</del></div>
                        <div>배송비 3,500원</div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row mt-3">
            <!-- 왼쪽: 주문자 정보 및 주문 요약 -->
            <div class="col-md-3">
                <!-- 주문자 정보 -->
                <div class="order-summary">
                    <h4>주문자 정보</h4>
                    <div class="form-group">
                        <label for="orderName">이름</label>
                        <input type="text" class="form-control" id="orderName" placeholder="이름">
                    </div>
                    <div class="form-group">
                        <label for="orderPhone">연락처</label>
                        <input type="text" class="form-control" id="orderPhone" placeholder="연락처">
                    </div>
                </div>
    
                <!-- 주문 요약 -->
                <div class="order-summary mt-4">
                    <h4>주문 요약</h4>
                    <p>상품가격: 26,400원</p>
                    <p>배송비: -7,000원</p>
                    <p>상품 할인금액: -8,936원</p>
                    <p><strong>총 주문금액: 24,464원</strong></p>
                    <button class="btn btn-success">결제하기</button>
                </div>
            </div>
    
            <!-- 오른쪽: 배송 정보 -->
            <div class="col-md-9">
                <div class="order-summary">
                    <h4>배송 정보</h4>
                    <div class="form-check mb-3">
                        <input type="checkbox" class="form-check-input" id="sameAsOrderer">
                        <label class="form-check-label" for="sameAsOrderer">주문자 정보와 동일</label>
                    </div>
                    <div class="form-group">
                        <label for="receiverName">수령인</label>
                        <input type="text" class="form-control" id="receiverName" placeholder="수령인">
                    </div>
                    <div class="form-group">
                        <label for="receiverPhone">연락처</label>
                        <input type="text" class="form-control" id="receiverPhone" placeholder="연락처">
                    </div>
                    <div class="form-group">
                        <label for="zipCode">우편번호</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="zipCode" placeholder="우편번호">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button">주소찾기</button>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address">주소</label>
                        <input type="text" class="form-control" id="address" placeholder="주소">
                    </div>
                    <div class="form-group">
                        <label for="addressDetail">상세주소</label>
                        <input type="text" class="form-control" id="addressDetail" placeholder="상세주소">
                    </div>
                    <div class="form-group">
                        <label for="deliveryMemo">배송메모</label>
                        <select class="form-control" id="deliveryMemo">
                            <option>배송메모를 선택해 주세요.</option>
                            <option>부재 시 경비실에 맡겨주세요.</option>
                            <option>부재 시 문 앞에 놓아주세요.</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>