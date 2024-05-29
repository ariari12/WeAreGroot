<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원탈퇴</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #F7F7F7;
    }

    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .card-header {
      background-color: #28a745;
      color: white;
      border-top-left-radius: 10px;
      border-top-right-radius: 10px;
      padding: 20px;
    }

    .btn-success {
      background-color: #28a745;
      border-color: #28a745;
    }

    .btn-success:hover {
      background-color: #218838;
      border-color: #1e7e34;
    }

    .form-label {
      color: #495057;
    }

    .form-control {
      border-color: #ced4da;
    }

    .form-control:focus {
      border-color: #28a745;
      box-shadow: 0 0 0 0.25rem rgba(40, 167, 69, 0.25);
    }
  </style>
</head>
<body>
  <div class="container py-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            <h3 class="mb-0">회원탈퇴</h3>
          </div>
          <div class="card-body">
            <form action="withdrawalProcess.jsp" method="post">
              <div class="mb-3">
                <label for="reason" class="form-label">탈퇴 사유</label>
                <textarea class="form-control" id="reason" name="reason" rows="5" required></textarea>
              </div>
              <div class="d-grid gap-2">
                <button type="submit" class="btn btn-success">탈퇴하기</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>