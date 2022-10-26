<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Product</title>
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
			<h2 class="text-warning text-center">ProductDetail</h2>

			<div class="row">
				<div class="col-4">
					<div class="panel panel-primary">
						<div class="panel-body text-center">

							<img
								src="${pageContext.request.contextPath}/images/${product.image}" />
						</div>
					</div>
				</div>
				<div class="col-8">
					<br> <br> 
					<div class="panel panel-primary">
						<div class="panel-body">

							<h2 class=" text-center">Tên Sản Phẩm : <span class="badge bg-info text-dark">${product.name}</span> </h2>
							<h3 class=" text-center">Dòng Sản Phẩm : <span class="badge bg-info text-dark">${product.category.name}</span></h3>

							<h3 class=" text-center">Giá : <span class="badge bg-danger text-dark">$ ${product.price}</span> </h3>
<c:if test="${product.available ==true}">	<h3 class="text-center">Tình Trạng :  <span class="badge bg-info text-dark">Còn Hàng</span>
							
								</h3></c:if>
								<c:if test="${product.available ==false}">	<h3 class="text-center">Tình Trạng :  <span class="badge bg-danger text-dark text-decoration-line-through">Hết Hàng</span>
							
								</h3></c:if>
								<br>
						
							<h3 class="text-center">
								<a href="/cart/add/${product.id}"
									class="btn btn-success col-4"><svg
										xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-bag-plus-fill"
										viewBox="0 0 16 16">
  <path fill-rule="evenodd"
											d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM8.5 8a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V12a.5.5 0 0 0 1 0v-1.5H10a.5.5 0 0 0 0-1H8.5V8z" />
</svg></a>
							</h3>
						</div>

					</div>
				</div>





			</div>










			<jsp:include page="../layout/Footer.jsp" />
</body>
</html>