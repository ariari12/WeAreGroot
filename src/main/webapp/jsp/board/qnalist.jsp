<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#sortSelect').change(function() {
            var selectedValue = $(this).val();
            if (selectedValue === 'viewCntDesc') {
                window.location.href = '/moran/board?cmd=qna&sort=viewCntDesc';
            } else {
                window.location.href = '/moran/board?cmd=qna&sort=regDate';
            }
        });

        var currentSort = '${param.sort}';
        console.log("Current sort:", currentSort);  
        if (currentSort === 'viewCntDesc') {
            $('#sortSelect').val('viewCntDesc');
        } else {
            $('#sortSelect').val('regDate');
        }
    });
</script>
</head>
<body>
	<div class="container">
	<table class="table">
		<c:forEach var="boardVO" items="${boardList}">
		<tr>
			<th><a href="?cmd=qnaModifyViewCnt&bId=${boardVO.getBId() }">${boardVO.title}</a></th>
			<td><a href="?cmd=qnaModifyViewCnt&bId=${boardVO.getBId() }">${boardVO.contents}</a></td>
		</tr>
   		 </c:forEach>
	</table>


    	<select id="sortSelect">
       		 <option value="regDate">최신순</option>
       		 <option value="viewCntDesc">인기순</option>
   		</select>
    
    	<button type="button" onclick="location.href='?cmd=qnaWrite'">QnA 작성하기</button>
    	<button type="button" onclick="location.href='?cmd=kh'">노하우로 이동</button>
 
	</div>

</body>
</html>