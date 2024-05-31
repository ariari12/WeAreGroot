<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	img {
	width: 400px;
	height: 400px
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script type="text/javascript">
function showEditForm(cId, contents, bId, type) {
    var formId = 'editForm-' + cId;
    var existingForm = document.getElementById(formId);

    if (existingForm) {
        existingForm.style.display = 'block';
    } else {
        var formHtml = '<form action="comment" method="post" id="' + formId + '">' +
                       '<input type="hidden" name="cmd" value="commentModify">' +
                       '<input type="hidden" name="cId" value="' + cId + '">' +
                       '<input type="hidden" name="bId" value="' + bId + '">' +
                       '<input type="hidden" name="type" value="' + type + '">' +
                       '<textarea name="contents" cols="100" rows="4">' + contents + '</textarea>' +
                       '<button type="submit">수정</button>' +
                       '<button type="button" onclick="hideEditForm(\'' + formId + '\')">취소</button>' +
                       '</form>';

        var commentDiv = document.getElementById('comment-' + cId);
        var div = document.createElement('div');
        div.innerHTML = formHtml;
        commentDiv.appendChild(div);
    }
}

function hideEditForm(formId) {
    var form = document.getElementById(formId);
    if (form) {
        form.style.display = 'none';
    }
}
</script>
</head>
<body>
    <div class="container">
        <h2>노하우 상세보기 페이지</h2>
        <table class="table">
        	<tr>
        	    <th>제목</th>
                <td>${boardVO.get('title') }</td>
                <th>작성자</th>
                <td>${boardVO.get('nick') }</td>
        	</tr>
            <tr>
                <th>조회수</th>
                <td>${boardVO.get('viewCnt')}</td>
                <th>좋아요수</th>
                <td>${boardVO.get('likeCnt') }</td>
            </tr>
            <tr>
                <th>내용</th>
                <td colspan="3">${boardVO.get('contents') }</td>
            </tr>
            <tr>
            	<td>
            		<img src="./resources/img/board/${boardVO.get('biImg') }" onerror="this.style.display='none'" alt='' />
            	</td>
            </tr>
            <tr>
                <td colspan="4">
                <c:set var="bId" value="${boardVO.get('bId') }"></c:set>
                    <button type="button" onclick="location.href='<c:url value='/board?cmd=kh' />'">노하우 목록</button>
                    
                    <!-- 아이디와 작성자가 같은 경우 해당 버튼 생성 -->
                    <c:choose>
	                    <c:when test="${boardVO.get('mId') eq loginId }">
	                    	<button type="button" onclick="location.href='<c:url value='/board?cmd=khModify&bId=${bId}' />'">수정하기</button>
	                    	<button type="button" onclick="location.href='<c:url value='/board?cmd=khDelete&bId=${bId}' />'">삭제하기</button>
	                    </c:when>
                    	
                    	<c:when test="${not empty loginId }">
                    	
                    		<c:choose>
                    			<c:when test="${likeResult eq 'ok' }">
									<button type="button" onclick="location.href='<c:url value='/board?cmd=khModifyLikeCnt&bId=${bId}&likeResult=likeOk' />'">좋아요</button>
                    			</c:when>
                    			<c:otherwise>
									<button type="button" onclick="location.href='<c:url value='/board?cmd=khModifyLikeCnt&bId=${bId}&likeResult=likeCancel' />'" >좋아요취소</button>
                    			</c:otherwise>
                    		</c:choose>
                    	</c:when>
                    		
                    </c:choose>
                </td>
            </tr>
        </table>
    </div>
    
    <div class="container">
        <h4>댓글</h4>
        <table class="table">
        <!-- 댓글 목록 나열 -->
            <c:forEach var="commentVO" items="${commentList}">
            <c:set var="bId" value="${boardVO.get('bId') }"></c:set>
            <c:set var="type" value="${boardVO.get('type') }"></c:set>
            <c:set var="cId" value="${boardVO.get('cId') }"></c:set>
            <c:set var="loginId" value="${loginId }"></c:set>
                <tr id="comment-${commentVO.get('cId')}">
                    <td>
                        내용 : ${commentVO.get('contents')} | 작성자 : ${commentVO.get('nick')} | 좋아요 : ${commentVO.get('likeCnt') }
                    </td>
                    <!-- 아이디와 댓글 작성자가 같은 경우 해당 버튼 생성 -->
                    <c:choose >
                    	<c:when test="${commentVO.get('mId') eq loginId }">
		                    <td>
		                        <button type="button" onclick="location.href='<c:url value='/comment?cmd=commentDelete&cId=${cId}&bId=${bId}&type=${type}' />'">댓글삭제하기</button>
		                    </td>
		                    
		
		                    <td>
		                        <button type="button" onclick="showEditForm('${commentVO.get('cId')}', '${commentVO.get('contents')}', '${bId}', '${type}')">댓글수정하기</button>
		                    </td>
                    	</c:when>
                    	
                    	<c:when test="${not empty loginId }">
		                    <td>
		                        <button type="button" onclick="location.href='<c:url value='/comment?cmd=commentModifyLikeCnt&cId=${cId}&bId=${bId}&type=${type}' />'">좋아요</button>
		                    </td>
                    	</c:when>
                    </c:choose>
                </tr>                
            </c:forEach>
        </table>
        
        <!-- 댓글작성 -->
        <c:choose>
        <c:when test="${not empty loginId }">
        <form action="comment" method="get">
	        <h3>댓글작성</h3>
	        <input type="hidden" name="cmd" value="commentWrite">
	        <input type="hidden" name="bId" value="${boardVO.get('bId')}">
	        <input type="hidden" name="mId" value="${loginId}">
	        <input type="hidden" name="type" value="${boardVO.get('type')}">
	        <textarea name="contents" id="contents" cols="100" rows="10"></textarea>
	        <button type="submit">댓글작성</button>
    	</form>
    	</c:when>        
        </c:choose>
    </div>
    
</body>
</html>
