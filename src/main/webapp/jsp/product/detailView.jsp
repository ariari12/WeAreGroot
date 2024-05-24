<%@page import="kr.co.moran.web.vo.ProductImgVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.moran.web.vo.ProductVO"%>
<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% 
	Object prdId = request.getParameter("no"); 
	ProductVO v = new ProductDAO().pdSelsctOneByPId( Integer.parseInt(prdId.toString()) );
%>
<title><%=v.getName() %></title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<!-- <script src="resources/js/product.js"></script> -->
<script src="resources/js/product.js"></script>

<link rel="stylesheet" href="resources/css/product.css">
<link rel="stylesheet" href="resources/css/product_detail.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">

</head>
<body>
<%=v.getPId() %>
<%=v.getName() %>
<div class="contents"></div>
<script>
	$(() => {
		$(".contents").html(descConvert(<%=v.getDescription().replace("None", "") %>));
	});
</script>

<%
	List<ProductImgVO> imgs = (List<ProductImgVO>)request.getAttribute("imgs");
	for(ProductImgVO img : imgs) { %>
<%-- 	<img alt="<%=v.getName() + "1번 이미지" %>" src="<%=img.getImg() %>"> --%>
	<% }
%>
<div class="div-wrapper">
<jsp:include page="../layout/header.jsp"></jsp:include>
<jsp:include page="../layout/footer.jsp"></jsp:include>

<jsp:include page="./productNav.jsp"></jsp:include>
        <!-- contents -->
        <div class="prd-detail-contents">
        <img class="prd_title-img" src="이미지 DB가져오기" />
        <div class="prd-title">꽃기린</div>
        <div class="prd-tag-pop">
            <div class="prd-tag-hot">
                <img class="prd-tag-img" src="resources/img/product_detail/pop.svg" />
                <div class="prd-tag-txt">인기</div>
            </div>
            <div class="prd-tag-new">
                <div class="prd-tag-img"></div>
                <div class="prd-tag-txt">신상품</div>
            </div>
        </div>

        <div class="prd-title-liner"></div>
        <div class="ctg-label">
            <div class="ctg-text">카테고리</div>
        </div>

        <!-- todo: 찜하기 추가할 것 -->

        <div class="reviews">
            <div class="reviews-score">
                <img class="rv-img-star" src="resources/img/product_detail/heart.svg" />
                <div class="rv-text">0.0</div>
                <div class="rv-text">(123)</div>
            </div>
            <div class="reviews-score">
                <img class="rv-img-star" src="resources/img/product_detail/star.svg" />
                <div class="rv-text">0.0</div>
                <div class="rv-text">(123)</div>
            </div>
        </div>

        <div id="prd-text-tag">
            <div class="prd-text-tag-frame">
                <div class="tag-text">#꽃을 감상하는</div>
            </div>
            <div class="prd-text-tag-frame">
                <div class="tag-text">#초보자용</div>
            </div>
            <div class="prd-text-tag-frame">
                <div class="tag-text">#선물하기 좋은</div>
            </div>
            <div class="prd-text-tag-frame">
                <div class="tag-text">#공기정화</div>
            </div>
            <div class="prd-text-tag-frame">
                <div class="tag-text">#목대있는</div>
            </div>
            <div class="prd-text-tag-frame">
                <div class="tag-text">#둥근모양</div>
            </div>
            <div class="prd-text-tag-frame">
                <div class="tag-text">#길쭉한</div>
            </div>
        </div>

        <div style="position: absolute; margin-top: 68px; margin-left: 16px;">
            <!-- 할인 후 가격 -->
            <div class="prd-dc-amount" id="price">561561</div>
            <div class="prd-won">원</div>
            <div class="prd-price-before">할인 전 가격</div>
            <div class="prd-dcrate">40% 할인</div>
        </div>

        <img class="prd-imgs" src="db 이미지1" />
        <img class="prd-imgs" src="db 이미지2" />
        <img class="prd-imgs" src="db 이미지3" />
        <div class="prd-pay-opt">
            <div class="shop-bak">
                <div class="btn-text">장바구니 담기</div>
            </div>
            <div class="buy-now">
                <div class="btn-text">바로 구매</div>
            </div>
            <div>
            <div style="display: flex; justify-content: flex-end; align-items: center; position: absolute; right: 768px;">
                <div class="amount-text">주문금액</div>
                <div id="totalPrice">13,456 원</div>
                <p class="prd-goods">(분갈이용 화분 포함) 꽃기린 x1</p>

                <div class="order-cnt-frame">
                    <div class="order-cnt-btn-frame">
                        <input type="text" class="order-num-text" name="cnt" id="cnt" value="1">
                    </div>
                    <img class="plus-img" id="plus" src="resources/img/product_detail/plue.svg" />
                    <img class="minus-img" id="minus" src="resources/img/product_detail/minus.svg" />
                </div>
            <div class="delivery-fee-text">배송비 3,500원 별도</div>
        </div></div>
        
        <div style="margin-top: -634px; margin-left: -780px;">
            <div style="border: 1px solid #f1f1f1; position: relative; top: 806px;margin-left: 374px; width: 1176px;"></div>
            
            <div class="menu">
                <div class="menu-select">
                    <div class="info-btn" id="btn-plant">
                        <div class="menu-btn-text">상품 식물 정보</div>
                    </div>
                    <div class="info-btn" id="btn-review">
                        <div class="menu-btn-text">상품후기(01)</div>
                    </div>
                    <div class="info-btn" id="btn-qna">
                        <div class="menu-btn-text">상품문의</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="prd-advice">
            <img src="img/product_detail/flower.svg" />
            <p class="prd-adv-text">모란모란이 알려드리는 해당 상품 식물 정보, 구매 전후로 꼭 확인해보세요!</p>
        </div>
        <div class="prd-text-title">꽃기린</div>
        <div class="prd-growth-form">생육형태 : 유포르비아</div>
        <p class="plant-info">
            꽃 정보/기능성 정보 : <br/>
            긴 줄기에 솟아오른 꽃의 모양이 기린 같다 하여 ‘꽃기린’이라고 불리는 꽃기린은 대극과의 다육식물이에요. 줄기에 난
            날카로운 가시가 예수님이 고난을 당할 때 쓰던 가시 면류관과 닮아서 &#39;Crown of thorns&#39;라고도 불리운답니다.
            <br/><br/>

            특별관리 정보 : <br/>
            꽃기린은 밝은 빛이 오랫동안 머무는 곳에서 잎 사이사이에 바람이 잘 통하도록 키워준다면 초보 식집사도 잘 키울 수
            있어요. 또한 빛만 충분히 받을 수 있다면 일년내내 꽃을 볼 수 있답니다. 꽃처럼 보이는 부분은 실제로는
            &#39;포엽&#39;으로, 포엽 중앙의 작은 노란 부분이 진짜 꽃기린의 꽃이랍니다. 
            <br/><br/>

            조언정보 : <br/>
            꽃기린을 자르거나 상처를 내게 되면 끈적한 진액이 나오는데, 이 진액에는 독성이 있어 알러지 반응을 일으키므로 진액이 직접 손에 닿지 않도록 주의해
            주세요.
        </p>
    </div>
    <!-- contents end -->
    </div>
	</div>
</body>
</html>