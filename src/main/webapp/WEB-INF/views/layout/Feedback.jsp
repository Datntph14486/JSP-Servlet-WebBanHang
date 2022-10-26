<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Feed Back</title>
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
			<div class="row">
  <div class="col-md-4 border border-1">
    <div class="card border-0" >
      
      <div class="card-body">
        <h5 class="card-title">Mọi ý kiến hay thắc về các khóa học hãy gửi cho chúng tôi</h5>
        <p class="card-text">Chúng tôi sẽ ghi nhận tất cả các góp ý của bạn và cải thiện các sản phẩm có được chất lượng tốt nhất.</p>
        <p>Vui lòng để lại thông tin và điền nội dung góp ý ở phần bên cạnh <span class="badge bg-danger text-dark">---------------></span></p>
      </div>
    </div>
  </div>
  <div class=" col-md-8 ">
   

  
    <form>
        <div class="mb-3">
         
          <input type="text" class="form-control" placeholder="HỌ TÊN" id="hoten" aria-describedby="emailHelp" ng-model="gopy.ho_ten">
          
        </div>
        <div class="mb-3">
         
          <input type="email" class="form-control" placeholder="EMAIL" id="email"  ng-model="gopy.email">
        </div>
        <div class="mb-3 ">
         
         
          <textarea name="" class="form-control" id="" placeholder="Nội dung" cols="30" rows="10"  ng-model="gopy.noi_dung"></textarea>
        </div>
        <button class="btn   btn-outline-secondary" style="margin-left: 50%; width: 100px;"  ng-click="clickGopy($event)">Gửi</button>
      </form>


</div>
<!---------->

</div>

<hr>

			<footer class="mt-3 row bg-secondary  text-white text-center "
				style="height: 100px;">

				<h4 style="margin-top: 30px;">“WELCOME TO MY STORE”</h4>
			</footer>

		</div>
</body>
</html>