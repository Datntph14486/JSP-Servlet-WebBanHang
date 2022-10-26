<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
	integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
	crossorigin="anonymous"></script>
</head>
<body>


	<div class="container">
		<div>
			<jsp:include page="Header.jsp" />

			<!------------menu------------------>
			<jsp:include page="Menu.jsp" />
			<br>
			<!----------nội dung---->
			<div class="row  border border-1">
				<div class="row " style="">
					<h3>Liên Hệ</h3>
				</div>
				<ul class="list-unstyled">

					<li>Số Điện Thoại Liên Hệ Giải Đáp Tất Cả Các Thắc Mắc : <a
						class="text-black">098 874 62 62</a></li>
					<li>Email : <a class="text-black">drs01@vikichi.vn</a></li>
					<li>Fanpage Chính Thức : <a class="text-black">https://www.facebook.com/GYMStore9999/</a>
					</li>
				</ul>
				<div class="row text-center">
					<h4>
						Mọi ý kiến phản hồi xin vui lòng gửi tới : <a class="text-black">drs01@vikichi.vn</a>
				</div>
				</h4>
			</div>
			<hr>

			<footer class="mt-3 row bg-secondary  text-white text-center "
				style="height: 100px;">

				<h4 style="margin-top: 30px;">“WELCOME TO MY STORE”</h4>
			</footer>

		</div>
</body>
</html>