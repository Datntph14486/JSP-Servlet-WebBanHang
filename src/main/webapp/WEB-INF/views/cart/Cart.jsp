<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>


<body>

	<div class="container">
		<div>
			<jsp:include page="../layout/Header.jsp" />

			<!------------menu------------------>
			<jsp:include page="../layout/Menu.jsp" />
			<br>
			<!----------nội dung---->
			<c:if test="${count==0}">
				<div class="panel-heading text-center">
					<h4>SHOPPING CART</h4>
				</div>
				<h3 class="text-center text-danger"
					style="font-variant: small-caps;">No items in your shopping
					cart</h3>
			</c:if>
			<div class="text-center text-danger">${sessionScope.order}</div>

			<c:if test="${count!=0}">
			

					<div class="panel panel-primary border border-2">
						<div class="panel-heading">
							<h4>SHOPPING CART</h4>
						</div>

						<!-- 						<div class="panel-body text-center">
							<h3 style="font-variant: small-caps;">No items in your
								shopping cart</h3>
						</div> -->

						<table class="table">
							<thead>
								<tr>
									<th>Id</th>
									<th>Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Amount</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${listCart}">
									<tr>
										<td>${item.id}</td>
										<td>${item.name}</td>
										<td>${item.price}</td>
										<form action="/cart/update" method="post">
											<input name="id" value="${item.id}" idden="true" ></input>
													<td><input name="qty" value="${item.qty}" type="number" min="1"
											style="width: 60px;" /> <button type="submit"><a
													href="/cart/update/"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
</svg></a></button> </td>
										
										</form>
							
										<td>$ ${item.price * item.qty}</td>
										<td>

											<button type="button" class="btn btn-sm btn-danger">
												<i class="glyphicon glyphicon-trash"><a
													href="/cart/remove/${item.id}"><svg
															xmlns="http://www.w3.org/2000/svg" width="16" height="16"
															fill="currentColor" class="bi bi-trash-fill"
															viewBox="0 0 16 16">
  <path
																d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z" />
</svg></a></i>
											</button>
										</td>
									</tr>
								</c:forEach>
								<tr>
									<span class="badge bg-danger text-dark">
										<h5>Tổng tiền : $ ${amount}</h5>
									</span>
								</tr>

							</tbody>
						</table>
							<form action="/cart/checkout" method="post">
						<c:if test="${sessionScope.name !=null}">
							<div class="panel-body">
								<div class="row">
									<div class="form-group col-sm-6">
										<div>Người Đặt Hàng:</div>
										<div name="name class="form-control">${sessionScope.username}</div>
									</div>
								
								</div>
								<div class="row">
									<div class="form-group col-sm-12">
										<div>Địa chỉ:</div>
										<textarea name="address" class="form-control"></textarea>
									</div>
								</div>
							</div>
						</c:if>


						<div class="panel-footer">
							<button class="btn btn-danger">
								<a href="/cart/clear"><i
									class="glyphicon glyphicon-hand-right"></i> Clear</a>
							</button>
							<button class="col-3 btn btn-primary" type="submit">
								Checkout</button>


						</div>
					</div>
				</form>

			</c:if>






		</div>


		<jsp:include page="../layout/Footer.jsp" />

	</div>
</body>
</html>
