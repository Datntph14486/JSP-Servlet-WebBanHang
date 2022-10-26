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
			<div class="panel panel-default">
				<div class="panel-heading text-center">PRODUCT ADD</div>
				<div class="text-danger">${sessionScope.productValidate}</div>
				<div class="panel-body">
					<div class="row">

						<div>
							<form:form action="/admin/product/add" method="post"
								modelAttribute="product">
								<div class="row">
									<div class="form-group col-sm-6">
										<div>Name</div>
										<form:input path="name" class="form-control" />
									</div>
									<div class="form-group col-sm-6">
										<div>Price</div>
										<form:input path="price" type="number" class="form-control" />
									</div>
								</div>
								<div class="row">
									<div class="form-group col-sm-6">
										<div>Image</div>
										<form:input path="image" type="file" class="form-control" />
									</div>
									<div class="form-group col-sm-6">
										<div>Category</div>
										<form:select path="category.id" class="form-control">
											<c:forEach var="item" items="${listCategory}">
												<form:option value="${item.id}">${item.name}</form:option>
											</c:forEach>
										</form:select>
									</div>
								</div>
								<div class="row">
								
									<div class="form-group col-sm-6">
										<div>Available?</div>
										<div class="form-control">
											<label class="radio-inline"> <form:radiobutton
													value="true" path="available" name="available" label="Yes" />
											</label> <label class="radio-inline"> <form:radiobutton
													value="false" path="available" name="available" label="No" />
											</label>
										</div>
									</div>
									<br>
									
										<div class="form-group col-sm-6">
										<div class="panel-footer text-center">
					<button class="btn btn-primary" style="    margin-top: 25px;
    width: 250px;">
						<b class="glyphicon glyphicon-plus"></b> Create
					</button>
				</div>
									</div> 
								</div>
						</div>
					</div>
				</div>
				

				</form:form>






				<jsp:include page="../layout/Footer.jsp" />
</body>
</html>