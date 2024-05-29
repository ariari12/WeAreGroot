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
	$(() => {
		  'use strict'
		  // Fetch all the forms we want to apply custom Bootstrap validation styles to
		  const forms = document.querySelectorAll('.needs-validation')

		  // Loop over them and prevent submission
		  Array.from(forms).forEach(form => {
		    form.addEventListener('submit', event => {
		      if (!form.checkValidity()) {
		        event.preventDefault()
		        event.stopPropagation()
		      }

		      form.classList.add('was-validated')
		    }, false)
		  })
		}	
	)
</script>
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h4>로그인</h4>
					</div>
					<div class="card-body">
						<form action="/moran/member" method="post"
							class="needs-validation" novalidate>
							<div class="mb-3">
								<label for="email" class="form-label">이메일</label> <input
									type="email" class="form-control" name="email" id="email"
									placeholder="이메일을 입력하세요" required>
								<div class="invalid-feedback">이메일 형식으로 입력해주세요.</div>
							</div>
							<div class="mb-3">
								<label for="password" class="form-label">비밀번호</label> <input
									type="password" class="form-control" name="pw" id="password"
									placeholder="비밀번호를 입력하세요" minlength="6" required>
								<div class="invalid-feedback">비밀번호는 최소 6자 이상이어야 합니다.</div>
							</div>
							<input type="hidden" name="cmd" value="loginOk" />
							<button type="submit" class="btn btn-primary btn-block">로그인</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	

	
</body>
</html>