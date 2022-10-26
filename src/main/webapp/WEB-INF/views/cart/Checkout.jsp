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
		<div>
   

        <div class="panel panel-primary">
            <div class="panel-heading">ORDER PURCHASING</div>
            <div class="panel-body">
            	<div class="row">
	            	<div class="form-group col-sm-6">
	                    <div>Purchaser:</div>
	                    <div class="form-control">{{$auth.user.fullname}} ({{$auth.user.email}})</div>
	                </div>
	                <div class="form-group col-sm-6">
	                    <div>Order Date:</div>
	                    <div class="form-control">{{order.createDate | date : 'dd-MM-yyyy'}}</div>
	                </div>
                </div>
                <div class="row">
	                <div class="form-group col-sm-12">
	                    <div>Shipping Address:</div>
	                    <textarea  class="form-control"></textarea>
	                </div>
                </div>
            </div>
            <div class="panel-footer text-right">
                <button  class="btn btn-success">Purchase</button>
            </div>
        </div>
 
</div>
		






		</div>


		<jsp:include page="../layout/Footer.jsp" />

	</div>
</body>
</html>
