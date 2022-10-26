<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Introduce</title>
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
			<div class="row ">
				<div class="row">
					<div class=" col-md-6">
						<img src="/images/gioithieu.jpg" alt=""
							class="img-fluid">
					</div>
					<div class="col-md-6">
						<h4>Khơi nguồn từ lòng đam mê tập Yoga - Gym, thấu hiểu rõ các nỗi lòng của các cô gái trong việc lựa chọn đồ thể thao, khát khao mang đến sự tự tin và thoải mái vận động cho tất cả các cô gái trong các buổi luyện tập và hơn thế nữa là mong muốn được góp phần tạo dựng hình ảnh mới lạ cho ngành công nghiệp thời trang thể thao Việt Nam. "GYM STORE" đã tập trung đầu tư vào chất lượng và kiểu dáng sản phẩm với phương châm “HEALTH AND BEAUTY – KHỎE VÀ ĐẸP".</h4>
					</div>


				</div>

				<div class="row mt-3">
					<p>Tại "GYM STORE", chúng tôi tin rằng một trang phục tập Yoga - Gym tốt sẽ giúp bạn đạt được năng lượng tối đa trong mỗi buổi luyện tập. Kết hợp với phong cách minimalism trong từng thiết kế, ôm trọn đường cong cơ thể, tôn dáng người mặc. Tất cả tạo nên một thương hiệu "GYM STORE" khác biệt, với hai tiêu chí cụ thể: hỗ trợ tối đa khi tập luyện và giúp bạn luôn tự tin tỏa sáng.</p>
				</div>
			</div>

			<hr>

			<footer class="mt-3 row bg-secondary  text-white text-center "
				style="height: 100px;">

				<h4 style="margin-top: 30px;">“WELCOME TO MY STORE”</h4>
			</footer>

		</div>
</body>
</html>