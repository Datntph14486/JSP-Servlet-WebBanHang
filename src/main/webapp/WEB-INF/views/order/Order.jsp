<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order</title>
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
		<jsp:include page="../layout/Header.jsp" />

			<!------------menu------------------>
			<jsp:include page="../layout/Menu.jsp" />
			<br>
			<!----------nội dung---->
			<div class="row">
			
				<table class="table table-condensed">
					<thead class="bg-success" style="font-variant: small-caps;">
						<tr>
							<th>MÃ ĐƠN HÀNG</th>
							<th> NGƯỜI ĐẶT</th>
							<th>NGÀY TẠO</th>
							<th>ĐỊA CHỈ</th>
							<th>THÔNG TIN</th>
							<th>TÌNH TRẠNG<TH>
					
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${listOrder}">
							<tr>
								<td>${item.id}</td>
 								<td>${item.account.username}</td>
								<td>${item.createDate}</td> 
								<td>${item.address}</td>
								<td><a href="/order/orderdetail/${item.id}"  class="btn btn-warning col-10">Xem</a> </td>
								<td>${item.status}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
</div>
<hr>
			<footer class="mt-3 row bg-secondary  text-white text-center "
				style="height: 100px;">

				<h4 style="margin-top: 30px;">“WELCOME TO MY STORE”</h4>
			</footer>

		</div>
</body>
</html>