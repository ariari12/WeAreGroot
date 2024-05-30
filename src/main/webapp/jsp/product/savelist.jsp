<%@page import="kr.co.moran.web.vo.member.MemberVO"%>
<%@page import="java.util.Date"%>
<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@page import="kr.co.moran.web.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script src="resources/js/product.js"></script>

<link rel="stylesheet" href="resources/css/product.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/globals.css">

<style>
a {
	text-decoration: none;
	color: #202020;
}

.text-wrapper-26 a {
	text-decoration: none;
	color: #ffffff;
}
.del-btn {
	idth: 88px;
    margin-top: 6px;
    margin-left: 22px;
    height: 35px;
    font-size: 18px;
    line-height: 17px;
    font-weight: 700;
}
</style>

<script>
let viewDetails = (no) => {
	window.location = "./product?cmd=detail&no=" + no;
};
</script>

</head>
<body>
<div class="div-wrapper " style="height: 220px; z-index: 3;">
<jsp:include page="layout/header.jsp"></jsp:include>
</div>
<jsp:include page="./productNav.jsp"></jsp:include>

<div class="container products">
<%
	ProductDAO dao = new ProductDAO();
	MemberVO member = (MemberVO)session.getAttribute("memberVO");

	List<ProductVO> vos = (List<ProductVO>)request.getAttribute("pdList");
	if(vos == null || vos.size() < 1) { %>
		<script>msgRedirect("해당하는 상품이 없습니다.", "product"); </script>
<%	}
	else {
	int cnt = 0;
	for(ProductVO v : vos) {
		int price = v.getPrice() - (int)(v.getPrice() * (v.getDcRate() / 100.0));
		
		if(cnt == 0) {  %> 
		<div class="frame-line"> 
		<% } %>
        <div class="frame-prd" onclick="viewDetails(<%=v.getPId() %>)">
            <img class="prd-img" src="<%=dao.piSelsctBigimgByPId(v.getPId()).getImg() %>" />
             <div class="prd-desc">
                <div class="prd-name"><%=v.getName() %></div>
                <div class="prd-price">
                	<del><%=String.format("%,d", v.getPrice()) %> 원</del>
                	<span style="color: red; margin-left: 20px;"><%=v.getDcRate() %>% 할인</span>
                	<br>
                	<span><%=String.format("%,d", price) %> 원</span>
                	
                	<%-- 상품 내리기 --%>
                	<% 	if(member != null && member.getAdmintype() > 0) { %>
                	<a href="<%="product?cmd=modify&type=prd&prd="+v.getPId() %>" class="btn btn-primary del-btn">다시 등록</a>
                	<% 	} %>
                </div>
            </div>
        </div>
		<%-- frame-prd end --%>
	  	<% 	cnt++;
	  		if(cnt >= 4) { 
	  		cnt = 0; %>
  		</div>
		<% } 
	} %>
	<%-- frame-line end --%>
    
	 <div class="page frame-line" style="margin-top: 20px;">
		 <nav aria-label="Page navigation">
			<ul class="pagination justify-content-center pagination-lg">
			<%
				dao.closeSession();
				int currentPage = Integer.parseInt(request.getAttribute("currentPage").toString());
			  	int maxPage = Integer.parseInt(request.getAttribute("maxPage").toString());
			  	String currentUrl = "?";
				String queryParam = request.getQueryString();
			  	if(queryParam != null) {
			  		if(queryParam.contains("page")) {
			  			int idx = queryParam.indexOf("page");
					  	// System.out.println(idx);
			  			queryParam = queryParam.substring(0, idx -1);
			  		}
			  		currentUrl += queryParam + "&";
			  	}
			  	// System.out.println(currentUrl);
				if(currentPage <= 1) { 
			%>
		   	<li class="page-item disabled">
		   		<span class="page-link">Previous</span>
		  	<% 	} else { %>
		   	<li class="page-item">
	   			<a class="page-link" href="<%=currentUrl + "page=" + (currentPage -1) %>">Previous</a>
		    	<% 	} %>
	    	</li>
		   	<%
			  	for(int i = 1; i <= maxPage; i++) {
			   	if(i == currentPage) {
	   		%>
		    <li class="page-item active" aria-current="page">
		    	<span class="page-link"><%=i %></span>
		   	<% 	} else { %>
		    <li class="page-item ">
		    	<a class="page-link" href="<%=currentUrl + "page=" + i %>"><%=i %></a>
		    <% 	} %>
		    </li>
	      	<% 	}
		  		if(currentPage >= maxPage) {
			%>
			<li class="page-item disabled">
				<span class="page-link">Next</span>
				<% } else { %>
				<li class="page-item">
				<a class="page-link" href="<%=currentUrl + "page=" + (currentPage +1) %>">Next</a>
				<% } %>
			</li>
		  	</ul>
		</nav>
	</div>
</div>
<% 	} %>
<%-- product container end --%>

<div class="div-wrapper" style="height: 0px; margin-top: -1350px;">
<jsp:include page="layout/footer.jsp"></jsp:include>
</div>
</body>
</html>