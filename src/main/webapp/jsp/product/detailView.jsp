<%@page import="java.time.LocalDate"%>
<%@page import="java.time.ZoneId"%>
<%@page import="java.util.Date"%>
<%@page import="kr.co.moran.web.vo.ProductImgVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.moran.web.vo.ProductVO"%>
<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% 
	Object prdId = request.getParameter("no"); 
	ProductVO v = (ProductVO)request.getAttribute("pdList");
%>
<title><%=v.getName() %></title>

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="resources/js/product.js"></script>
<script src="resources/js/product_detail.js"></script>

<link rel="stylesheet" href="resources/css/product.css">
<link rel="stylesheet" href="resources/css/product_detail.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">
<link rel="stylesheet" href="resources/css/productQa.css">
<style>
	a {
		text-decoration: none;
		color: #202020;
	}
	.text-wrapper-26 a {
		text-decoration: none;
		color: #ffffff;
	}
	.div-wrapper .frame-23 a {
		text-decoration: none;
		color: #202020;
	}
	

	/* 상품 후기 */	
    .review-container {
        border: 1px solid #ccc;
        padding: 15px;
        border-radius: 5px;
        max-width: 1000px;
    	margin: 27px 0 10px -342px;
        background-color: #f9f9f9;
        font-size: 22px;
    }
    .review-container table {
        width: 100%;
        border-collapse: collapse;
        border-bottom: 1px solid #ccc;
    }
    .review-container th, .review-container td {
        padding: 8px;
        text-align: left;
    }
    .review-container th {
        background-color: #f0f0f0;
    }
    .review-container .reg-date {
    	margin-right: 10px;
    }

    .rv_imgs {
        border: 1px solid rgb(179, 179, 179);
        width: 100px;
        height: 100px;
        margin-right: 10px;
    }

    .review-container #review-page {
        margin-top: 11px;
        margin-bottom: -20px;
    }
</style>

</head>
<body>

<%
	List<ProductImgVO> imgs = (List<ProductImgVO>)request.getAttribute("imgs");
	String imgsTag = "{";
	int cnt = 1; 
	for(ProductImgVO img : imgs) {
		imgsTag += "img" + cnt +": \"" + img.getImg() + "\",";
		cnt++;
	}
	imgsTag += "}";
%>

<script>
	$(() => {
		descConvert(<%=v.getDescription().replace("None", "") %>, '<%=v.getName() %>');
		imgBath(<%=imgsTag %>);
		menuBtnClick();
		
		$("#info-frame").show();
		$("#review-frame").hide();
		$("#qna-frame").hide();
		
		$("#btn-plant").click(() => {
			descConvert(<%=v.getDescription().replace("None", "") %>, '<%=v.getName() %>');
			$("#info-frame").show();
			$("#review-frame").hide();
			$("#qna-frame").hide();
		});
		
		$("#btn-review").click(() => {
			review(<%=prdId %>);
			$("#plant-frame").hide();
			$("#review-frame").show();
			$("#qna-frame").hide();
		});

		$("#btn-qna").click(() => {
			qnaInfo(<%=prdId %>);
			$("#plant-frame").hide();
			$("#review-frame").hide();
			$("#qna-frame").show();
		});
		
		let keepClick = false;
		$("#keep-btn").click(() => {
			keepClick = !keepClick;
			if(keepClick) {
				$("#keep-img").attr("src", "resources/img/product_detail/heart_color.svg");
				viweMsg("찜 등록 되었습니다.")
			}
			else {
				$("#keep-img").attr("src", "resources/img/product_detail/heart_gray.svg");
				viweMsg("찜 해제 되었습니다.")
			}
		});
	});
</script>
<%-- header --%>
<div class="div-wrapper" style="z-index: 4; height: 254px; margin-bottom: -444px;">
	<jsp:include page="layout/header.jsp"></jsp:include>
</div>

<%-- nav --%>
<div style="z-index: 3; position: relative; margin-top: 418px;">
	<jsp:include page="./productNav.jsp"></jsp:include>
</div>

<div class="div-wrapper" style="position: relative; z-index: 2; margin-top: 11px; margin-bottom: 599px;">
    
    <%-- contents --%>
    <div class="prd-detail-contents">
		<img class="prd_title-img" src="<%=imgs.get(0).getImg() %>" />
		<div class="prd-title"><%=v.getName() %></div>

		<div class="prd-title-liner"></div>
		<div class="ctg-label">
		    <div class="ctg-text" id="category"></div>
		</div>
				
		<div class="reviews">
			<%-- 찜 --%>
		    <div class="reviews-score">
		        <img class="rv-img-star" src="resources/img/product_detail/heart_color.svg" />
		        <div class="rv-text">0.0</div>
		        <div class="rv-text">(123)</div>
		    </div>
		    <%-- 상품 후기 --%>
		    <div class="reviews-score">
		        <img class="rv-img-star" src="resources/img/product_detail/star_color.svg" />
		        <div class="rv-text">${score}</div>
		        <div class="rv-text">(${cnt})</div>
		    </div>
		</div>
		
		
		<%-- todo: 찜하기 추가할 것 --%>
		<div id="keep-btn" style="z-index: 5; position: absolute; margin-top: 458px; margin-left: 1300px;">
	        <img id="keep-img" style="height: 80px;" src="resources/img/product_detail/heart_gray.svg" />
	        <span style="
	        position: absolute;
		    width: 150px;
		    font-size: 37px;
		    font-family: 'Pretendard Variable-Bold', Helvetica;
		    margin-top: 20px;
		    margin-left: 1px;
		    font-weight: bold;">
				찜
			</span>
		</div>
		
		
		<div class="prd-tag-pop">
		    <% 	Object popPIdList = request.getAttribute("popPIdList");
		    	if(popPIdList != null) {
		    		List<Integer> popList = (List<Integer>)popPIdList;
		    		if(popList.contains(v.getPId())) { 
		    %>
		    <div class="prd-tag-hot">
		        <img class="prd-tag-img" src="resources/img/product_detail/pop.svg" />
		        <div class="prd-tag-txt">인기</div>
		    </div>
		    <%
		    		}
	    		}
		    	
		    	long differenceInDays = 
						(long) (System.currentTimeMillis() - v.getCreateDate().getTime())
							/ (1000 * 60 * 60 * 24);
               	if(differenceInDays < 60) { 
		    %>
		    <div class="prd-tag-new">
		        <div class="prd-tag-img"></div>
		        <div class="prd-tag-txt">신상품</div>
		    </div>
		    <% 	} %>
		</div>

		<%-- 상품 수정 및 삭제 버튼 : 관리자 용 --%>
		<c:if test="${admintype > 0}">
			<div class="admin-btn">
	        	<a class="btn btn-warning" href="?cmd=modify&type=prd&prd=view&no=<%=v.getPId() %>">상품정보 수정</a>
	        	<a class="btn btn-danger" href="<%="?cmd=delete&type=prd&prd=" + v.getPId() %>">상품 내리기</a>
			</div>
		</c:if>

		<%-- 상품 글 태그 --%>
		<div id="prd-text-tag"></div>
		
		<div style="position: absolute; margin-top: 36px; margin-left: 16px;">
		    <%  int amount = v.getPrice() - (int)(v.getPrice() * (v.getDcRate() / 100.0)); %>
		    <%-- 할인 후 가격 --%>
		    <div class="prd-dc-amount" id="price"><%=String.format("%,d", amount) %></div>
		    <div class="prd-won">원</div>
		    <div class="prd-price-before"><%=String.format("%,d", v.getPrice()) %> 원</div>
		    <div class="prd-dcrate"><%=v.getDcRate() %>% 할인</div>
		</div>
		
		<%-- product imgs --%>
		<div id="prdImgs"></div>
		
		<div class="prd-pay-opt">
	    	<% Object member = session.getAttribute("memberVO"); 
	    		if(member == null) { %>
		    <div class="shop-bak" id="noCart">
		        <div class="btn-text">장바구니 담기</div>
		    </div>
    		<% 	} else { %>
		    <div class="shop-bak" id="addCart">
		        <div class="btn-text">장바구니 담기</div>
		    </div>
		    <% 	} %>
		    <div class="buy-now" id="order">
		        <div class="btn-text">바로 구매</div>
		    </div>
		    
		    <div>
			    <div style="display: flex;justify-content: flex-end; align-items: center; position: absolute; right: 768px;">
			        <div class="amount-text">주문금액</div>
			        <div id="totalPrice"><%=String.format("%,d", amount) %> 원</div>
			        <p class="prd-goods"><%=v.getName() %></p>
			        
			        <div class="order-cnt-frame">
			            <div class="order-cnt-btn-frame">
			                <input type="text" class="order-num-text" name="cnt" id="cnt" value="1">
			            </div>
			            <img class="plus-img" id="plus" src="resources/img/product_detail/plue.svg" />
			            <img class="minus-img" id="minus" src="resources/img/product_detail/minus.svg" />
			        </div>
			    <div class="delivery-fee-text">배송비 3,500원 별도</div>
			</div>
		</div>
	
		<div style="margin-top: -634px; margin-left: -780px; position: relative; z-index: -1;">
		    <div style="border: 1px solid #f1f1f1; position: relative; top: 806px;margin-left: 374px; width: 1176px;"></div>
		        <div class="menu">
		            <div class="menu-select">
		                <div class="info-btn" id="btn-plant">
		                    <div class="menu-btn-text menu-btn-click">상품 식물 정보</div>
		                </div>
		                <div class="info-btn" id="btn-review">
		                    <div class="menu-btn-text">상품후기 (${cnt})</div>
		                </div>
		                <div class="info-btn" id="btn-qna">
		                    <div class="menu-btn-text">상품문의</div>
		                </div>
		            </div>
		        </div>
		    </div>
		
	    	<%-- 상품설명 --%>
		    <div id="info-frame">
			    <div class="prd-advice">
			        <img src="resources/img/product_detail/flower.svg" />
			        <p class="prd-adv-text">모란모란이 알려드리는 해당 상품 식물 정보, 구매 전후로 꼭 확인해보세요!</p>
			    </div>
			    <div class="prd-text-title"><%=v.getName() %></div>
			    <div class="prd-growth-form"></div>
			    <p class="plant-info"></p>
			    <div id="big-img"></div>
		    </div>
		    
	    	<%-- 상품후기 --%>
		    <div id="review-frame">
		    	<div style="height: 1000px; margin-top: 50px;">
				    <div class="review-container"></div>
		    	</div>
		    </div>
		    
	    	<%-- 상품문의 추가 --%>
		    <div id="qna-frame">
		    	<div style="height: 1000px; margin-top: 50px; width: 1200px; font-size: 40px; position: relative; left: -420px;">
		    		<div id="qa-container">
		    		
		    		</div>
		    	</div>
		    </div>
		</div>
	</div>
	<%-- contents end --%>
	
	<% // 수량 %>
	<c:set var="quantity" value="${productVO.quantity}" />
    <script type="text/javascript">
        let quantity = "${quantity}";
    </script>
</div>

<%-- footer --%>
<div class="div-wrapper" id="footer" style="z-index: 1; margin-top: -300px;">
	<jsp:include page="layout/footer.jsp"></jsp:include>	
</div>
</body>
</html>