<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
<link rel="stylesheet" href="resources/css/globals.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style>
.container {
  max-width: 400px;
  margin: 0 auto;
  padding: 20px;
  background-color: #ffffff;
  border: 1px solid #e4e4e4;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h2 {
  text-align: center;
  color: #00b267;
  margin-bottom: 20px;
}

.form-group {
  margin-bottom: 20px;
}

label {
  display: block;
  font-weight: bold;
  color: #333333;
  margin-bottom: 5px;
}

input[type="text"],
input[type="email"] {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: 1px solid #e4e4e4;
  border-radius: 4px;
}

button[type="submit"] {
  display: block;
  width: 100%;
  padding: 10px;
  font-size: 16px;
  text-align: center;
  color: #ffffff;
  background-color: #00b267;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button[type="submit"]:hover {
  background-color: #008c4d;
}
</style>
</head>
<body>
  <div class="container">
    <h2>아이디 비밀번호 찾기</h2>
    <form>
      <div class="form-group">
        <label for="name">이름</label>
        <input type="text" id="name" name="name" required>
      </div>
      <div class="form-group">
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" required>
      </div>
      <button type="submit">비밀번호 찾기</button>
    </form>
  </div>
</body>
</html>