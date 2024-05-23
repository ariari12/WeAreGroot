<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
	$(()=>{
		$("#verifyEmailBtn").click(function(){
	        var email = $("#email").val();
	        console.log(email);
	        if(email != ""){
	            $.ajax({
	                type : "POST",
	                url : "/moran/member",
	                data : {
	                    cmd : "emailOk",
	                    email : email
	                },
	                success : function(response){
	                    if(response === "success"){
	                        alert("이메일 인증이 완료되었습니다");
	                        $("verifyEmailBtn").attr("disabled", true);
	                        $("verifyEmailBtn").attr("readonly", true);
	                    }else{
	                        alert("이메일 인증에 실패하였습니다");
	                    }
	                },                    
	                error : function(){
	                    alert("이메일 인증 요청에 실패하였습니다. 다시 시도해주세요")
	                }
	            });
	        }
	    });
	});
</script>

</head>
<body>

  <div class="container">
    <form action="/moran/member" method="post">
      <h2>회원가입</h2>
      <table class="table table-striped">
        <tr>
          <th>이름</th>
          <td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
          <th>이메일</th>
          <td>
            <input type="text" name="email" id="email">
            <button type="button" id="verifyEmailBtn" class="btn btn-primary">이메일 인증</button>
          </td>
        </tr>
        <tr>
        	  <div id="verificationCodeContainer" style="display: none;">
    <label for="verificationCode">인증번호:</label>
    <input type="text" id="verificationCode" name="verificationCode" required>
    <button type="button" id="verifyCodeBtn">인증번호 확인</button><br>
  </div>
        </tr>
        
        <tr>
          <th>비밀번호</th>
          <td><input type="password" name="pw"></td>
        </tr>
        <tr>
          <th>비밀번호 입력 확인</th>
          <td><input type="password" name="repw"></td>
        </tr>
        <tr>
          <th>닉네임</th>
          <td><input type="text" name="nickname" id="nickname"></td>
        </tr>
        <tr>
          <th>전화번호</th>
          <td><input type="tel" name="phone" id="phone"></td>
        </tr>
        <tr>
          <th>생일</th>
          <td><input type="date" name="birth" id="birth"></td>
        </tr>
        <tr>
        	<th>성별</th>
        	<td>
        		<label for="male">남성</label>
	        	<input type="radio" id="male" name="m_gender" value="male" checked><br>
				<label for="female">여성</label>
				<input type="radio" id="female" name="m_gender" value="female"><br>
								    
        	</td>
        </tr>
            
        <tr>
          <td colspan="2">
            <input type="hidden" name="cmd" value="joinOk">
            <button type="submit" class="btn btn-primary">제출</button>
            <input class="btn btn-danger" type="reset" value="다시쓰기">
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>