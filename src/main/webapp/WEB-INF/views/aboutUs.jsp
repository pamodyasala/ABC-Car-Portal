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
	<div class="container aboutus" style ="padding-top: 50px;">
		<div class="jumbotron">
			<h3>- About ABC Cars pte ltd -</h3>



			<p class="lead">Transportation is vital for economic growth and globalization. Without it, 
			travelers and cargoes are impossible to transport. Although different modes of transportation exist worldwide, cars are the most prominent mode of transport that promotes mobility and independence. Specifically, cars eliminate hassles in public transportation. Whether you use it for work or to run errands, cars are perfectly convenient. With such ideas, we need not wonder why most people are interested in owning a car. In turn, various car dealers also emerged to supply the market’s demands. Accordingly, the global auto industry will sell approximately 80 million automobiles in 2022. Today, numerous car dealers build websites to sell automobiles nationwide or worldwide efficiently. If you happen to own a car dealership business and wish to build your web presence, y
			ou might want to consider these best car dealer websites we’ve handpicked for you.</p>

			<hr class="my-4">
			<p>We also help buyers with less-than-perfect credit find special
				financing options through our network of trusted lending partners.</p>
			<p class="lead">
				<a class="btn btn-primary btn-lg" href="new" role="button">Join Us Now!</a>
			</p>
		</div>
	</div>
<div class="mt-4 p-5 bg-secondary text-block rounded mt-auto">
<p class="float-end">ABC Cars,
Jaykay Marketing Services Pvt Ltd.
No:148, Vauxhall Street, Colombo 2, Sri Lanka.</p> 
</div>
</body>
</html>
