<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  
  
</head>
<body class="d-flex flex-column min-vh-100">
<div>
<nav class="navbar navbar-expand-sm navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="javascript:void(0)">ABC CARS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="new">Register Now</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="login">Login</a>
        </li>
        <li class="nav-item dropdown">
  <a class="nav-link dropdown-toggle" href="cars" role="button" data-bs-toggle="dropdown">Cars</a>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="about">About us</a></li>
    <li><a class="dropdown-item" href="contact">Contact us</a></li>
    <li><a class="dropdown-item" href="logout">Logout</a></li>
  </ul>
</li>
      </ul>
      <form class="d-flex">
        <a class="navbar-brand"> <img
				src="/images/toppng.com-toyota-car-transparent-group-of-cars-768x147.png" width="220px" />
			</a>
      </form>
    </div>
  </div>
</nav>
</div>

<br>
	<div class="container p-5 my-5 border">
	
		<div class="row">
		<h3 class="margin text-center">Detail Car Information !</h3>
		<br>

			<div class="col-md-8">

				<form:form class="form-horizontal">

					<div class="form-group">
						<label for="id" class="control-label col-sm-4">ID: </label>
						<label for="id" class="control-label col-sm-4">${car.id}</label>
						
					</div>


					<div class="form-group">
						<label for="make" class="control-label col-sm-4">Car Make:</label>
						<label for="id" class="control-label col-sm-4">${car.make}</label>
						
					</div>

					<div class="form-group">
						<label for="model" class="control-label col-sm-4">Car Model: </label>
						<label for="id" class="control-label col-sm-4">${car.model}</label>
						
					</div>

					<div class="form-group">
						<label for="reg" class="control-label col-sm-4">Reg No: </label>
						<label for="id" class="control-label col-sm-4">${car.registeration}</label>
						
					</div>

					<div class="form-group">
						<label for="price" class="control-label col-sm-4">Price: </label>
						<label for="id" class="control-label col-sm-4">${car.price}</label>
						
					</div>

					<hr />

					<div class="form-group">
						<label for="price" class="control-label col-sm-4"> <img
							src="/images/avator.png" width="60px" alt="..."></label>
						<div class="col-sm-8" style="padding: 20px;">

							<form action="car_detail?id=${car.id}" method="post">
								<input type="hidden" name="id" value="${car.id}" /> <input
									type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" /> <input type="number"
									placeholder="Enter Bid Price" name="bitprice" />

								<div class="form-group" style="padding: 20px;">
									<input type="submit" value="Bit Car" class="btn btn-success">
									<a href="cars" class="btn btn-danger">Go Back</a>
								</div>

							</form>
						</div>

					</div>

					<script>
						function goBack() {
							window.history.back();
						}
					</script>

				</form:form>


			</div>

			<div class="col-md-3 bg-3">
				<h4> Current Bidding Price!</h4><br/>
			<c:forEach var="car_bidding" items="${bidinfo}">
				
				<div class="card mb-3 card bg-info" style="padding:10px;">
				
					<div class="row" >
						<div class="col-md-6">
							<img class="card-img-top"
							src="/images/avator.png" width="30px" class="rounded-circle"
							class="mr-3" alt="...">
							<p>${car_bidding.bidderName}</p>
						</div>
						<div class="col-md-6">
							<div class="card-body">
								<p class="card-head"><small class="text-muted">${car_bidding.bid_date_time}</small></p>
								<p class="card-text">Bidded Price: ${car_bidding.bidderPrice}</p>
						
							</div>
						</div>
					</div>
				</div>
				
				<hr/>
			</c:forEach>

			</div>


		</div>




	</div>

<div class="mt-4 p-5 bg-secondary text-block rounded mt-auto">
<p class="float-end">ABC Cars,
Jaykay Marketing Services Pvt Ltd.
No:148, Vauxhall Street, Colombo 2, Sri Lanka.</p> 
</div>
</body>
</html>
