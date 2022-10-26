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
				<h2 class="panel-heading text-center">DANH SÁCH SẢN PHẨM</h2>
				<table class="table table-condensed">
					<thead class="bg-success" style="font-variant: small-caps;">
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Price</th>
							<th>Date</th>
							<th>Image</th>
							<th>Category</th>
							<th>Available?</th>
							<th>action</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${products.content}">
							<tr>
								<td>${item.id}</td>
								<td>${item.name}</td>
								<td>$ ${item.price}</td>
								<td>${item.createDate}</td>
								<td>${item.image}</td>
								<td>${item.category.name}</td>
								<td>${item.available?'Còn':'Hết'}</td>
								<td>
									<div class="btn-group btn-group-xs">
										<a  href="/admin/product/edit/${item.id}" class="btn btn-warning">
											<b class="glyphicon glyphicon-edit"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-gear-fill"
													viewBox="0 0 16 16">
  <path
														d="M9.405 1.05c-.413-1.4-2.397-1.4-2.81 0l-.1.34a1.464 1.464 0 0 1-2.105.872l-.31-.17c-1.283-.698-2.686.705-1.987 1.987l.169.311c.446.82.023 1.841-.872 2.105l-.34.1c-1.4.413-1.4 2.397 0 2.81l.34.1a1.464 1.464 0 0 1 .872 2.105l-.17.31c-.698 1.283.705 2.686 1.987 1.987l.311-.169a1.464 1.464 0 0 1 2.105.872l.1.34c.413 1.4 2.397 1.4 2.81 0l.1-.34a1.464 1.464 0 0 1 2.105-.872l.31.17c1.283.698 2.686-.705 1.987-1.987l-.169-.311a1.464 1.464 0 0 1 .872-2.105l.34-.1c1.4-.413 1.4-2.397 0-2.81l-.34-.1a1.464 1.464 0 0 1-.872-2.105l.17-.31c.698-1.283-.705-2.686-1.987-1.987l-.311.169a1.464 1.464 0 0 1-2.105-.872l-.1-.34zM8 10.93a2.929 2.929 0 1 1 0-5.86 2.929 2.929 0 0 1 0 5.858z" />
</svg></b>
										edit</a>  
										<c:if test="${item.available}"><a href="/admin/delete/${item.id}" class="btn btn-danger">
											<b  class="glyphicon glyphicon-trash"><svg
													xmlns="http://www.w3.org/2000/svg" width="16" height="16"
													fill="currentColor" class="bi bi-trash3"
													viewBox="0 0 16 16">
  <path
														d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5ZM11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0H11Zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5h9.916Zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5Z" />
</svg></b>
										</a></c:if>  <div> </div>
										 <c:if test="${!item.available}"><a  href="/admin/delete/${item.id}" class="btn btn-danger">
										restore
										</a></c:if>
										
									</div>
								</td>
							</tr>
						</c:forEach>


					</tbody>
				</table>
				<br>
				<button style="float: right; margin-bottom: 20px"
					
					style="margin-right: 10px;">

					<a href="/admin/product/add" class="btn btn-success text-left"><svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-bag-plus-fill"
							viewBox="0 0 16 16">
  <path fill-rule="evenodd"
								d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM8.5 8a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V12a.5.5 0 0 0 1 0v-1.5H10a.5.5 0 0 0 0-1H8.5V8z" />
</svg> CREATE</a>
				</button>


				<br>

				<div>
					<ul class="pagination">
						<c:forEach begin="0" end="${products.totalPages - 1 }"
							varStatus="page">
							<li class="page-item"><a class="page-link"
								href="/admin/product?p=${page.index + 1}">${page.index+1}</a></li>
						</c:forEach>
					</ul>

				</div>

			</div>

			<jsp:include page="../layout/Footer.jsp" />
</body>
</html>