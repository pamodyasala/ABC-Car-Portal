<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<div class="container-fluid bg-1 text-center">
		<h3 class="margin">Post A Car For Sale !</h3><br>

		<div class="row">

			<div class="col-md-4"></div>

			<div class="col-md-4">


				<!--
            It is standard practice to have all action & href urls wrapped with c:url tag.
            This tag adds jsessionid to the action/href url, in case cookies are disabled by the user.
       			 -->

				
				<form:form method="POST" action="/cars" modelAttribute="car">

					<input type="hidden" value="${_csrf.token}"/>
						
					<form:hidden path="id" />
					
					<div class="form-group">
					<form:label path="make">Car Make:</form:label>
					<form:input path="make" />
					</div><br>


					<div class="form-group">
						<label for="model">Car Model:</label> 
						<form:input path="model"/>
					</div><br>

					<div class="form-group">
						<label for="registeration"> Register No:</label>
						<form:input path="registeration"/>
						 
					</div><br>

					<div class="form-group">
						<label for="price">Car Price:</label> 
						<form:input path="price"/>
					</div><br>

					<input type="submit" name="Add" value="Save" class="btn btn-success"/> <input
						type="button" value="Cancel" onclick="cancel()" class="btn btn-danger"/>

					<script>
						function cancel() {
							window.location.href = "cars"
						}
					</script>
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
