<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD VENDOR</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body style="background-color: #f0f1f9">

	<%-- Start Navber --%>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background: linear-gradient(135deg, #71b7e6, #9b59b6);">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> ADD VENDOR</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/home">HOME</a></li>
					<li class="nav-item"><a class="nav-link" href="/getAllVendors">VIEW VENDOR</a></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>

	<%-- End Navber --%>


	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
					
					<h4 class="text-center text-dark">Add Vendor Form</h4>
					
				<%-- 	<div th:if="${session.msg}"></div>
					<h5 class="text-center text-success" th:text="${session.msg}"></h5>
					<th:block th:text="${#session.removeAttribute('msg')}"></th:block>
				--%>
						<form action="/saveVendor" method="post" class="row g-3">
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Vendor Name</label>
								<input type="text" class="form-control" id="inputEmail4" name="vendorName">
							</div>
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Password</label>
								<input type="password" class="form-control" id="inputPassword4" name="vendorPassword">
							</div>

							<div class="col-md-4">
								<label for="inputState" class="form-label">Select Vendor
									Category</label> <select id="inputState" class="form-select" name="vendorCategoryName">
									<option selected>Choose...</option>
									<option>FRUITS</option>
									<option>VEGITABLES</option>
								</select>
							</div>

							<div class="col-md-4">
								<label for="inputState" class="form-label">Select Vendor
									UserType</label> <select id="inputState" class="form-select" name="vendorUserType">
									<option selected>Choose...</option>
									<option>INDIVIDUAL</option>
									<option>ORGANISATION</option>
								</select>
							</div>

							<div  class="col-12 ">
								<label for="inputAddress" class="form-label">Home Name</label> <input
									type="text" class="form-control" id="inputAddress"
									placeholder="1234 Main St" name="houseName">
							</div>
							<div class="col-12">
								<label for="inputAddress2" class="form-label">District</label>
								<input type="text" class="form-control" id="inputAddress2"
									placeholder="Apartment, studio, or floor" name="district">
							</div>
							<div class="col-md-6">
								<label for="inputCity" class="form-label">Street</label> <input
									type="text" class="form-control" id="inputCity" name="street">
							</div>
							<div class="col-md-4">
								<label for="inputState" class="form-label">State</label> <select
									id="inputState" class="form-select" name="state">
									<option selected>Choose...</option>
									<option>Kerala</option>
								</select>
							</div>
							
							<div class="col-md-6">
								<label for="inputCity" class="form-label">Post Office</label> <input
									type="text" class="form-control" id="inputCity" name="postOffice">
							</div>
							
							<div class="col-md-2">
								<label for="inputZip" class="form-label">PinCode</label> <input
									type="text" class="form-control" id="inputZip" name="pinCode">
							</div>
							<div class="col-12"></div>
							<div class="col-12">
								<button type="submit" class="btn btn-dark" style="background: linear-gradient(135deg, #71b7e6, #9b59b6);">Add Vendor</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>