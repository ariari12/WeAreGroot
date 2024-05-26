<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	window.onload = function() {
		let btn = document.getElementById("btn");
		btn.onclick = openKakaoPostCode; // openKakaoPostCode함수를 실행
		
		$("submitBtn").click(function(){
			alert("회원정보 수정 완료");
		});
	}

	function openKakaoPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색 결과 항목을 클릭했을때
				// 실행할 코드를 작성하는 부분
				console.log("팝업에서 검색 버튼 눌림");
				console.dir(data);

				document.getElementById("zipcode").value = data.zonecode;
				document.getElementById("addr1").value = data.roadAddress;
				//document.getElementById("addr2").value = data.jibunAddress;
			}
		}).open();
	}
</script>
<title>Insert title here</title>
</head>
<body>


	<c:choose>

		<c:when test="${not empty sessionScope.memberVO}">
			<h1>마이 페이지</h1>
			<div>
				<div>

					<h3>비밀번호 변경(푸르다 마켓처럼 페이지 이동)</h3>
					<h3>회원 정보 수정</h3>
				</div>

				<div class="container">
					<form action="member" method="post">
						<div class="mb-3">
							<label for="email" class="form-label">이메일</label> <input
								type="email" class="form-control" name="email" id="email"
								value="${sessionScope.memberVO.email}" readonly="readonly">
						</div>
						<c:choose>
							<c:when test="${not empty requestScope.memberInfo}">
								<div class="mb-3">
									<label for="zipcode" class="form-label">우편번호</label>
									<div class="input-group">
										<input type="text" class="form-control" name="" id="zipcode"
											value="${sessionScope.memberVO.zipcode }">
										<button class="btn btn-primary" type="button" id="btn">우편번호찾기</button>
									</div>
								</div>

								<div class="mb-3">
									<label for="addr1" class="form-label">주소</label> <input
										type="text" class="form-control" name="addr1" id="addr1"
										value="${sessionScope.memberVO.addr1 }">
								</div>

								<div class="mb-3">
									<label for="addr2" class="form-label">상세 주소</label> <input
										type="text" class="form-control" name="addr2" id="addr2"
										value="${sessionScope.memberVO.addr2 }">
								</div>
							</c:when>
							<c:otherwise>
								<div class="mb-3">
									<label for="zipcode" class="form-label">우편번호</label>
									<div class="input-group">
										<input type="text" class="form-control" name="" id="zipcode">
										<button class="btn btn-primary" type="button" id="btn">우편번호찾기</button>
									</div>
								</div>

								<div class="mb-3">
									<label for="addr1" class="form-label">주소</label> <input
										type="text" class="form-control" name="addr1" id="addr1">
								</div>

								<div class="mb-3">
									<label for="addr2" class="form-label">상세 주소</label> <input
										type="text" class="form-control" name="addr2" id="addr2">
								</div>
							</c:otherwise>

						</c:choose>

						<div class="mb-3">
							<label for="name" class="form-label">이름</label> <input
								type="text" class="form-control" name="name" id="name"
								value="${sessionScope.memberVO.name }">
						</div>
						<div class="mb-3">
							<label for="name" class="form-label">닉네임</label> <input
								type="text" class="form-control" name="nick" id="nick"
								value="${sessionScope.memberVO.nick }">
						</div>

						<div class="mb-3">
							<label for="phone" class="form-label">연락처</label> <input
								type="tel" class="form-control" name="phone" id="phone"
								value="${sessionScope.memberVO.phone }">
						</div>

						<div class="mb-3">
							<label for="birth" class="form-label">생년월일</label> <input
								type="date" class="form-control" name="birth" id="birth"
								value="${sessionScope.memberVO.birth }">
						</div>

						<div class="mb-3">
							<label class="form-label">성별</label>
							<div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="male" value="male"
										${sessionScope.memberVO.gender == 'male' ? 'checked' : ''}>
									<label class="form-check-label" for="male">남성</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="female" value="female"
										${sessionScope.memberVO.gender == 'female' ? 'checked' : ''}>
									<label class="form-check-label" for="female">여성</label>
								</div>
							</div>
						</div>
						
						<div class="mb-3">
							<input type="hidden" name="cmd" value="modifyMemberOk" />	
							<input type="hidden" name="mId" value="${sessionScope.memberVO.mId}" />	
							<button type="submit" id="submitBtn" class="btn btn-primary">회원정보 수정</button>
						</div>
					</form>
				</div>		
			</div>

			<div>
				<h3>주문 내역</h3>
				<button>상세보기 버튼(상세목록 페이지로 이동)</button>

				주문번호,상품이름 ,주문날짜, 총가격, 수량, 주문상태 주문내역 목록 5개정도 보여줌

				<h3>내가 쓴 글</h3>
				<button>상세보기 버튼 (상세목록 페이지로 이동)</button>
				게시판 이름 목록 5개정도 보여줌

				<h3>내가 찜한 상품</h3>
				<button>상세보기 버튼(상세목록 페이지로 이동)</button>
				상품이름 상품 5개정도 보여줌
			</div>
			<div>
				<div>
					<button>회원탈퇴(버튼)</button>
				</div>
			</div>

		</c:when>
		<c:otherwise>
			<%
			response.sendRedirect("index.jsp");
			%>
		</c:otherwise>
	</c:choose>

</body>
</html>