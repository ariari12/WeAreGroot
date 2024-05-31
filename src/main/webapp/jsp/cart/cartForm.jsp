<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<c:forEach var="vo" items="${cartVO }"> 
		            <div class="cart-item" id="cart-item">
		                <div class="cart-item-th-cetner">
		                	<% // 재고가 남아있다면 checkbox를 생성 %>
		                	<c:if test="${vo.getPQuantity() >= 1}">
		                    	<input class="form-check-input cart-checkbox checkboxs" type="checkbox" name="" id="check-${vo.getPId() }" checked>
		                    </c:if>
		                </div>
		                <div class="cart-item-th-left">
		                	<% // 프로젝트를 합치면서 주소가 바뀔 예정 수정해주어야 함. %>
		                	<a href="product?cmd=detail&no=${vo.getPId() }">
		                    <img class="product-img" src="${vo.getPImg() }" alt="">
		                    <% // 재고가 없다면 취소선, 품절 표시 %>
		                    <c:choose>
		                    	<c:when test="${vo.getPQuantity() >= 1}">
					            	<span class="product-name">${vo.getPName() }</span>
					         	</c:when>
					         	<c:otherwise>
					            	<span class="product-name"><del>${vo.getPName() }</del> <b>(품절)</b></span>
					            </c:otherwise>
					        </c:choose>
					        </a>
		                </div>
		                <div class="cart-cnt">
		                    <c:choose>
								<c:when test="${vo.getMCnt() eq 1}">
									<img id="minus-${vo.getPId() }" class="minus-btn" src="resources/img/frame-427321498.svg" />
								</c:when>
								<c:otherwise>
									<img id="minus-${vo.getPId() }" class="minus-btn" src="resources/img/frame-427321498_1.svg" />
								</c:otherwise>
							</c:choose>
							
							<c:choose>
								<c:when test="${vo.getPQuantity() >= 1}">
									<input type="number" class="product-cnt" name="cnt" id="cnt-${vo.getPId() }" value="${vo.getMCnt() }" disabled>
								</c:when>
								<c:otherwise>
									<input type="number" class="product-cnt" name="cnt" id="cnt-${vo.getPId() }" value="0" disabled>
								</c:otherwise>
							</c:choose>
		                    <c:choose>
								<c:when test="${vo.getPQuantity() <= vo.getMCnt()}">
									<img id="plus-${vo.getPId() }" class="plus-btn" src="resources/img/frame-427321499.svg" />
								</c:when>
								<c:otherwise>
									<img id="plus-${vo.getPId() }" class="plus-btn" src="resources/img/frame-427321499_1.svg" />
								</c:otherwise>
							</c:choose>
		                </div>
		                <div class="product-price" id="product-price-${vo.getPId() }" data-price="${vo.getPPrice() }" data-qty="${vo.getPQuantity() }" data-pid="${vo.getPId() }">
		                	<% // 재고량 부조시 0 원으로 출력 %>
		                	<c:choose>
								<c:when test="${vo.getPQuantity() >= 1}">
									${vo.getPPrice() }
								</c:when>
								<c:otherwise>
									0
								</c:otherwise>
							</c:choose>
		                	원
		                </div>
		            </div>
	            </c:forEach>