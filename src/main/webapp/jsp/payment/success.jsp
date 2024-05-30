<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모란모란</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- sweetAlert2 -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
	<script type="text/javascript">

	$(document).ready(function () {
		
		//알림창
		let Toast = Swal.mixin({
			toast: true,
			position: 'center-center',
			showConfirmButton: false,
			timer: 3000,
			timerProgressBar: true,
			didOpen: (toast) => {
			}
		})
		
		Toast.fire({
            icon: 'success',
            title: '결제에 성공하였습니다.'
        });
		
		
		setTimeout(() => {
		    window.location.href = '/moran/main'; 
		}, 3000);
		
	})
</script>
	
	
</body>
</html>