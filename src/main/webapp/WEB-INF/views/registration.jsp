<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<%@ include file="./base.jsp" %>
<title>Product App : Registration</title>

</head>
<body>
<%@ include file="./normalnav.jsp"%>
	
	<div class="container text-center text-black mt-2" style="width:55%;margin:auto;">
		<h3>Register here !!</h3>
		<div class="alert alert-secondary" role="alert"><form:errors path="customer.*"/></div>
		<hr>
		<form action="processRegForm" method="post">
			<div class="form-group row">
				<label for="customerName" class="col-sm-2 col-form-label">Name
					:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="customerName"
						name="customerName" placeholder="Enter name">
				</div>
			</div>
			<div class="form-group row">
				<label for="customerEmail" class="col-sm-2 col-form-label">Email
					:</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="customerEmail"
						name="customerEmail" placeholder="Enter email">
				</div>
			</div>
			<div class="form-group row">
				<label for="password" class="col-sm-2 col-form-label">Password
					:</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password"
						name="password" placeholder="password">
				</div>
			</div>
			<div class="form-group row">
				<label for="dob" class="col-sm-2 col-form-label">D.O.B :</label>
				<div class="col-sm-10">
					<input type="text" placeholder="dd/mm/yyyy" class="form-control"
						id="dob" name="dob">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-12">
					<button type="submit" class="btn btn-primary">Register</button>
					<button type="reset" class="btn btn-primary">Reset</button>
				</div>
				<div class="container text-center mt-2"><a href="login">if register, click here</a></div>
			</div>
		</form>

	</div>
</body>
</html>