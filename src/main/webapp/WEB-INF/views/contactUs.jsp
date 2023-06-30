<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
	<div class="container contactus" style ="padding-top: 50px;">
		<div class="jumbotron">

				<div class="row">
					<h2 class="text-center">CONTACT </h2>
				</div>
				
				<div class="row">
					<div class="col-sm-5">
						<p>Contact us and we'll get back to you within 24 hours.</p>
						<p>
							<span class="glyphicon glyphicon-map-marker"></span> ABC Cars,Jaykay Marketing Services Pvt Ltd.
No:148, Vauxhall Street, Colombo 2, Sri Lanka.
						</p>
						<p>
							<span class="glyphicon glyphicon-phone"></span> +94 71 1 123456
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							contactus@carsaleabc.com
						</p>
					</div>
					<div class="col-sm-7 slideanim">
						<div class="row">
							<div class="col-sm-6 form-group" style ="padding-top: 10px;">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
	
							<div class="col-sm-6 form-group" style ="padding-top: 10px;">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
							
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5"></textarea>
						<br>
						<div class="row">
							<div class="col-sm-12 form-group" style ="padding-top: 10px;">
								<button class="btn btn-success pull-right" type="submit">Send</button>
							</div>
						</div>
					</div>
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
