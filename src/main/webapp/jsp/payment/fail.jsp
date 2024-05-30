<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>모란모란</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- sweetAlert2 -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
<section>
    <h1>결제 실패</h1>
</section>

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
            icon: 'error',
            title: '결제에 실패하였습니다.'
        });
		
		
		setTimeout(() => {
		    window.location.href = '/moran/main'; 
		}, 3000);
		
	})


</script>

</body>
</html>