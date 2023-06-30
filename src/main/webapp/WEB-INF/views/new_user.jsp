<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
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

<div class="container bg-1 text-center" style ="padding-top: 50px;">
		<h3 class="margin">Register Here ! </h3>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<c:if test="${register_success != null}">
					<div class="alert alert-success">
						<p>${register_success} Click <a href="login"> Sign In</a> to use our portal...</p>
					</div>
				</c:if>

			<form:form action="save" method="post" modelAttribute="user">
				<div class="form-group">
					<label for="username">Your Full Name:</label>
					<form:input path="name" class="form-control" required="true"/>
				</div>
				
				<div class="form-group">
					<label for="username">Your Login User Name:</label>
					<form:input path="userName" class="form-control" required="true"/>
					
				</div>
				
				
				<div class="form-group">
					<label for="password">Your Password:</label>
					<form:password path="password" class="form-control" required="true"/>
					
				</div>
				<br>
				
				<input type="submit" value="Register" class="btn btn-success"/>
					
			</form:form>

			</div>


			<div class="col-md-4"></div>

		</div>

	</div>
<div class="mt-4 p-5 bg-secondary text-block rounded mt-auto">
<p class="float-end">ABC Cars,
Jaykay Marketing Services Pvt Ltd.
No:148, Vauxhall Street, Colombo 2, Sri Lanka.</p> 
</div>
</body>
</html>
