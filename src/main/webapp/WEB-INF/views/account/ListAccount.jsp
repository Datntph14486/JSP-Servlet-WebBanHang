<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
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
			<div class="panel panel-default">
				<h2 class="panel-heading text-center">DANH SÁCH TÀI KHOẢN</h2>
				<table class="table table-condensed">
					<thead class="bg-success" style="font-variant: small-caps;">
						<tr>
							<th>Usernam</th>
							<th>Passwrod</th>
							<th>fullname</th>
							<th>email</th>
							<th>role</th>
							<th>activated</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${ListProduct}">
							<tr>
								<td>${item.username}</td>
								<td>${item.password}</td>
								<td>$ ${item.fullname}</td>
								<td>${item.email}</td>
								<td>${item.role}</td>
								<td>${item.activated?'Hoạt động':'Không hoạt động'}</td>
								<td>
									<div class="btn-group btn-group-xs">
										<a  href="/account/edit/${item.username}" class="btn btn-warning">
											<b class="glyphicon glyphicon-edit"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-gear-fill"
													viewBox="0 0 16 16">
  <path
														d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z" />
</svg></b>
										edit</a>  
									</div>
								</td>
							</tr>
						</c:forEach>


					</tbody>
				</table>
				<br>
				<button style="float: right; margin-bottom: 20px"
					
					style="margin-right: 10px;">

					<a href="#" class="btn btn-success text-left"><svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-bag-plus-fill"
							viewBox="0 0 16 16">
  <path fill-rule="evenodd"
								d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM8.5 8a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V12a.5.5 0 0 0 1 0v-1.5H10a.5.5 0 0 0 0-1H8.5V8z" />
</svg> CREATE</a>
				</button>


				<br>
<%-- 
				<div>
					<ul class="pagination">
						<c:forEach begin="0" end="${products.totalPages - 1 }"
							varStatus="page">
							<li class="page-item"><a class="page-link"
								href="/admin/product?p=${page.index + 1}">${page.index+1}</a></li>
						</c:forEach>
					</ul>

				</div> --%>

			</div>

			<jsp:include page="../layout/Footer.jsp" />
</body>
</html>