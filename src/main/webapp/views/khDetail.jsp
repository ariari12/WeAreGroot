<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
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
                <td>${boardVO.title }</td>
            </tr>
            <tr>
                <th>내용</th>
                <td>${boardVO.contents }</td>
            </tr>
            <tr>
                <td rowspan="2">
                    <button type="button" onclick="location.href='<c:url value='/board?cmd=kh' />'">노하우 목록</button>
                    <button type="button" onclick="location.href='<c:url value='/board?cmd=khModify&bId=${boardVO.getBId()}' />'">수정하기</button>
                    <button type="button" onclick="location.href='<c:url value='/board?cmd=khDelete&bId=${boardVO.getBId()}' />'">삭제하기</button>
                </td>
            </tr>
        </table>
    </div>
    
    <div class="container">
        <h4>댓글</h4>
        <table class="table">
            <c:forEach var="commentVO" items="${commentList}">
                <tr id="comment-${commentVO.getCId()}">
                    <td>
                        내용 : ${commentVO.contents} | 글쓴이Id : ${commentVO.getMId()}
                    </td>
                    <td>
                        <button type="button" onclick="location.href='<c:url value='/comment?cmd=commentDelete&cId=${commentVO.getCId()}&bId=${boardVO.getBId()}&type=${boardVO.type}' />'">댓글삭제하기</button>
                    </td>
                    <td>
                        <button type="button" onclick="showEditForm('${commentVO.getCId()}', '${commentVO.contents}', '${boardVO.getBId()}', '${boardVO.type}')">댓글수정하기</button>
                    </td>
                </tr>                
            </c:forEach>
        </table>
    </div>
    
    <form action="comment" method="post">
        <h3>댓글작성</h3>
        <input type="hidden" name="cmd" value="commentWrite">
        <input type="hidden" name="bId" value="${boardVO.getBId()}">
        <input type="hidden" name="mId" value="${boardVO.getMId()}">
        <input type="hidden" name="type" value="${boardVO.type}">
        <textarea name="contents" id="contents" cols="100" rows="10"></textarea>
        <button type="submit">댓글작성</button>
    </form>
</body>
</html>
