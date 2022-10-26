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

			<div class="row">


				<article class="col-md-9">
					<div class="row">
						<c:forEach var="product" items="${listProduct}">
							<div class="card col-md-4 cl border-1" style="margin-top:20px; margin-right: 20px; width: 30%;" >
							<a href="/home/productDetail/${product.id}">	<img  href="/home/productDetail/${product.id}" style="height: 280px"
									src="${pageContext.request.contextPath}/images/${product.image}"
									class="card-img-top"></a>
								<div class="card-body" style="height: 100px">
									<div class="row">
										<p class="card-title text-center">${product.name}</p>
										<h4 class="text-danger text-center">$ ${product.price}</h4>
									</div>

								</div>
								<div class="row ">
									<a href="/cart/add/${product.id}"
										class="btn btn-success  col-4"><svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-bag-plus-fill"
											viewBox="0 0 16 16">
  <path fill-rule="evenodd"
												d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM8.5 8a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V12a.5.5 0 0 0 1 0v-1.5H10a.5.5 0 0 0 0-1H8.5V8z" />
</svg></a>
									<h2 class="col-1"></h2>
									<c:if test="${product.available==true}">
										<h5 class="text-success col-4 text-left">
											<span></span>Còn Hàng
										</h5>
									</c:if>
									<c:if test="${product.available==false}">
										<h5
											class="text-decoration-line-through col-4 text-left text-danger">
											<span>Hết Hàng</span>
										</h5>
									</c:if>
								</div>
							</div>
						</c:forEach>
					</div>
					<br>




				</article>

				<!----------danh mục------>
				<aside class="col-md-3">


					<div class="panel panel-primary border border-5">
						<div class="panel-body text-center">
							<a href="/cart"><h5>
									<button class="btn border-0  btn-outline-secondary">
										<h3>Giỏ Hàng</h3>
										<h4>
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" fill="currentColor" class="bi bi-basket-fill"
												viewBox="0 0 16 16">
  <path
													d="M5.071 1.243a.5.5 0 0 1 .858.514L3.383 6h9.234L10.07 1.757a.5.5 0 1 1 .858-.514L13.783 6H15.5a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5H15v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V9H.5a.5.5 0 0 1-.5-.5v-2A.5.5 0 0 1 .5 6h1.717L5.07 1.243zM3.5 10.5a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3zm2.5 0a.5.5 0 1 0-1 0v3a.5.5 0 0 0 1 0v-3z" />
</svg>
											Sản Phẩm: ${sizeItem}
										</h4>
									</button>
								</h5> </a>
						</div>
					</div>
					<br>

					<div>
						<ul class="list-group card">
							<div data-bs-toggle="collapse" data-bs-target="#monhoc">
								<li class="list-group-item "><button
										class="btn border-0  btn-outline-secondary">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-card-list"
											viewBox="0 0 16 16">
                            <path
												d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                            <path
												d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zM4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z" />
                        </svg>
										Danh sách Sản Phẩm
									</button></li>
							</div>
							<!---------->




							<div class="card-collapse" id="monhoc">
								<c:forEach var="item" items="${listCategory}">
									<li class="list-group-item"><button
											class="btn border-0  btn-outline-secondary">
											<a class="btn border-0 btn-outline-secondary"
												href="/home/category/${item.id}">${item.name}</a>
										</button></li>
								</c:forEach>
							</div>

						</ul>
					</div>



				</aside>





				<jsp:include page="../layout/Footer.jsp" />
</body>
</html>