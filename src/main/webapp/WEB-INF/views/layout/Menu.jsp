
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="row">
	<nav class="navbar navbar-expand-lg  border navbar-light bg-light ">
		<div class="container-fluid text-black">

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="nav navbar-nav nav-tabs me-auto mb-2 mb-lg-0">
					<li class="nav-item active"><a
						class="btn border-0 btn-outline-secondary " aria-current="page"
						href="/home/listProduct/page"><svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
									d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6zm5-.793V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z" />
                                            <path fill-rule="evenodd"
									d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z" />
                                        </svg> Trang Chủ</a></li>
					<li class="nav-item "><a
						class="btn border-0 btn-outline-secondary" aria-current="page"
						href="/home/introduce"> <svg
								xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-blockquote-left"
								viewBox="0 0 16 16">
                                            <path
									d="M2.5 3a.5.5 0 0 0 0 1h11a.5.5 0 0 0 0-1h-11zm5 3a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1h-6zm0 3a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1h-6zm-5 3a.5.5 0 0 0 0 1h11a.5.5 0 0 0 0-1h-11zm.79-5.373c.112-.078.26-.17.444-.275L3.524 6c-.122.074-.272.17-.452.287-.18.117-.35.26-.51.428a2.425 2.425 0 0 0-.398.562c-.11.207-.164.438-.164.692 0 .36.072.65.217.873.144.219.385.328.72.328.215 0 .383-.07.504-.211a.697.697 0 0 0 .188-.463c0-.23-.07-.404-.211-.521-.137-.121-.326-.182-.568-.182h-.282c.024-.203.065-.37.123-.498a1.38 1.38 0 0 1 .252-.37 1.94 1.94 0 0 1 .346-.298zm2.167 0c.113-.078.262-.17.445-.275L5.692 6c-.122.074-.272.17-.452.287-.18.117-.35.26-.51.428a2.425 2.425 0 0 0-.398.562c-.11.207-.164.438-.164.692 0 .36.072.65.217.873.144.219.385.328.72.328.215 0 .383-.07.504-.211a.697.697 0 0 0 .188-.463c0-.23-.07-.404-.211-.521-.137-.121-.326-.182-.568-.182h-.282a1.75 1.75 0 0 1 .118-.492c.058-.13.144-.254.257-.375a1.94 1.94 0 0 1 .346-.3z" />
                                        </svg> Giới Thiệu
					</a></li>
					<li class="nav-item "><a
						class="btn border-0 btn-outline-secondary" aria-current="page"
						href="/home/contact"><svg xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-telephone" viewBox="0 0 16 16">
                                            <path
									d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                                        </svg> Liên Hệ</a></li>
					<li class="nav-item "><a
						class="btn border-0 btn-outline-secondary" aria-current="page"
						href="/home/feedback"><svg xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-chat-square-dots" viewBox="0 0 16 16">
                                            <path
									d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                            <path
									d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                                        </svg> Góp Ý</a></li>
                                        
                                        <c:if test="${sessionScope.name !=null}">
                                        	<li class="nav-item "><a
						class="btn border-0 btn-outline-secondary" aria-current="page"
						href="/order"><svg xmlns="http://www.w3.org/2000/svg"
								width="16" height="16" fill="currentColor"
								class="bi bi-chat-square-dots" viewBox="0 0 16 16">
                                            <path
									d="M14 1a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1h-2.5a2 2 0 0 0-1.6.8L8 14.333 6.1 11.8a2 2 0 0 0-1.6-.8H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h2.5a1 1 0 0 1 .8.4l1.9 2.533a1 1 0 0 0 1.6 0l1.9-2.533a1 1 0 0 1 .8-.4H14a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z" />
                                            <path
									d="M5 6a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
                                        </svg>Đơn Hàng</a></li></c:if>
					<c:if test="${sessionScope.role==true}">
						<li class="nav-item "><a
							class="btn border-0 btn-outline-secondary" aria-current="page"
							href="/admin/product"><svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-bag-plus-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd"
										d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM8.5 8a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V12a.5.5 0 0 0 1 0v-1.5H10a.5.5 0 0 0 0-1H8.5V8z" />
</svg>Sản Phẩm</a></li>
					</c:if>
					<c:if test="${sessionScope.role==true}">

						<li class="nav-item "><a
							class="btn border-0 btn-outline-secondary" aria-current="page"
							href="/account/list"><svg xmlns="http://www.w3.org/2000/svg"
									width="16" height="16" fill="currentColor"
									class="bi bi-bag-plus-fill" viewBox="0 0 16 16">
  <path fill-rule="evenodd"
										d="M10.5 3.5a2.5 2.5 0 0 0-5 0V4h5v-.5zm1 0V4H15v10a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V4h3.5v-.5a3.5 3.5 0 1 1 7 0zM8.5 8a.5.5 0 0 0-1 0v1.5H6a.5.5 0 0 0 0 1h1.5V12a.5.5 0 0 0 1 0v-1.5H10a.5.5 0 0 0 0-1H8.5V8z" />
</svg>Người Dùng</a></li>
					</c:if>





				</ul>
				<ul class="navbar-nav ml-auto nav-tabs">

					<li class="nav-item dropdown"><c:if
							test="${sessionScope.name !=null}">
							<a class="nav-link dropdown-toggle border  bg-danger" href="#"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"><svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                            <path
										d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
                                        </svg> ${sessionScope.name}</a>

						</c:if> <c:if test="${sessionScope.name ==null}">
							<a class="nav-link dropdown-toggle border" href="#"
								id="navbarDropdown" role="button" data-bs-toggle="dropdown"
								aria-expanded="false"><svg
									xmlns="http://www.w3.org/2000/svg" width="16" height="16"
									fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                            <path
										d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
                                        </svg> Tài Khoản </a>

						</c:if>

						<ul class="dropdown-menu" aria-labelledby="navbarDropdown"
							ng-controller="onBtnHocVien">
							<c:if test="${sessionScope.name ==null}">
								<li><a class="dropdown-item" href="/Auth/register">Đăng
										Kí</a></li>

							</c:if>
							<c:if test="${sessionScope.name ==null}">

								<li><a class="dropdown-item" href="/Auth/Login">Đăng
										Nhập</a></li>

							</c:if>

							<c:if test="${sessionScope.name !=null}">
								<li><a class="dropdown-item" href="/Auth/logout">Đăng
										Xuất</a></li>

							</c:if>



							<hr class="dropdown-divider"></li>
				</ul>
				</li>
				</ul>

			</div>
		</div>
	</nav>

</div>