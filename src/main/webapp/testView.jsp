<%@page import="kr.co.moran.web.vo.ProductImgVO"%>
<%@page import="kr.co.moran.web.vo.ProductVO"%>
<%@page import="kr.co.moran.web.dao.ProductDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실내 정원 식물</title>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<script>
	function convert(contents, n) {
		let content = "<p class='contents'>";
		for (const key in contents) {
			if(contents[key] == null) continue;
			content += 
				key + " : " + contents[key] + "<br/>";
	    }
		content += "</p>";
        console.log(content);
        $(n).html(content);
	}	
</script>
<style>
	.contents {
		width: 1000px;
	}
	img {
		width: 150px;
	}
</style>

</head>
<body>
<div class="container">
<table class="table">
	<tr>
		<th>식물번호</th>
		<th>식물 명</th>
		<th>내용 : json</th>
		<th>이미지</th>
	</tr>
<%
	// List<ProductVO> vos = new ProductDAO().pdSelectAll();
	// System.out.print(vos);
	List<ProductVO> vos = new ProductDAO().pdSelectAll();
	for(ProductVO v : vos) {
		// System.out.println(v.getDesc());
	%>
	<tr>
		<td><%=v.getId() %></td>
		<td><%=v.getName() %></td>
		<td id="<%="product" + v.getId() %>">
			<script>
			convert(<%= v.getDesc().replace("\n", "").replace("None", "") %>, '<%= "#product" + v.getId() %>');
			</script>
		</td>
		<% 	for(ProductImgVO img : new ProductDAO().piSelsctByPdid(v.getId()) ) { %>
		<td><img src="<%=img.getImg() %>"></td>
		<% } %>
	</tr>
		<%
	}
%>
</table>
</div>
</body>
</html>