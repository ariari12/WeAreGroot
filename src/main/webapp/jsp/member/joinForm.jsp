<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
</script>

</head>
<body>

	 <div class="container">
		<form action="/moran/member" method="post">
			<h2>회원가입</h2>
	 		<table class="table table-striped">
	 			<tr>
	 				<th>이름</th>
	 				<td>
	 					<input type="text" name="name" id="" />
	 				</td>
	 			</tr>
	 			<tr>
	 				<th>이메일</th>
	 				<td>
	 					<input type="text" name="email" />	 					
	 				</td>
	 			</tr>
	 			<tr>
	 				<th>비밀번호</th>
	 				<td><input type="password" name="pw" /></td>
	 			</tr>
				 <tr>
					<th>비밀번호 입력 확인</th>
					<td><input type="password" name="repw" /></td>
				</tr>
	 			<tr>
	 				<th>닉네임</th>
	 				<td>
	 					<input type="text" name="nickname" id="" />
	 				</td>
	 			</tr>
	 			<tr>
	 				<th>전화번호</th>
	 				<td>
	 					<input type="tel" name="phone" id="" />
	 				</td>
	 			</tr>
				<tr>
	 				<th>생일</th>
	 				<td>
	 					<input type="date" name="birth" id="" />
	 				</td>
	 			</tr>
	 			
	 			<tr>
	 				<td colspan="2">	 					
	 					<input type="hidden" name="cmd" value="joinOk" />	 					
						<button type="submit" class="btn btn-primary">제출</button>
	 					<input class="btn btn-danger" type="reset" value="다시쓰기" />
	 				</td>
	 			</tr>
	 		</table>
		  </form>
		  
	 </div>

</body>
</html>