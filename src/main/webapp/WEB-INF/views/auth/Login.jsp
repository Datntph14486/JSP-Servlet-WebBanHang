<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

			<div class="container py-5 h-100">
				<div
					class="row d-flex justify-content-center align-items-center h-100">
					<div class="col col-xl-10">
						<div class="card" style="border-radius: 1rem;">
							<div class="row g-0">
								<div class="col-md-6 col-lg-5 d-none d-md-block">
									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/img1.webp"
										alt="login form" class="img-fluid"
										style="border-radius: 1rem 0 0 1rem;" />
								</div>
								<div class="col-md-6 col-lg-7 d-flex align-items-center">
									<div class="card-body p-4 p-lg-5 text-black">

										<form action="/Auth/Login" method="post">

											<div class="d-flex align-items-center mb-3 pb-1">
												<i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
												<span class="h1 fw-bold mb-0">Login</span>
											</div>

											<h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign
												into your account</h5>
											<h3 class="text-danger">${error}</h3>
											<div class="form-outline mb-4">
												<input name="username" type="text" id="form2Example17"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form2Example17">Email
													address</label>
											</div>

											<div class="form-outline mb-4">
												<input name="password"  id="form2Example27"
													class="form-control form-control-lg" type="password" /> <label
													class="form-label"  for="form2Example27">Password</label>
											</div>
											<button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
										</form>

										<%-- 										<form action="/Login/login" method="post">




											<div class="form-outline mb-4">
												<input type="password" id="form2Example27"
													class="form-control form-control-lg" /> <label
													class="form-label" for="form2Example27">Password</label>
											</div>

											<div class="pt-1 mb-4">
												<button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
											</div>
										</form> --%>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<jsp:include page="../layout/Footer.jsp" />

		</div>
</body>
</html>
