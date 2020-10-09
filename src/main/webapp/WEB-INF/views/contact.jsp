<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>Product App : Contact</title>
</head>
<body>
	<%@ include file="./normalnav.jsp"%>

	<div class="container mt-3" style="width:60%;marging:auto;">
		<div class="card">
			<div class="card-header">Contact Us</div>
			<div class="card-body ">
				<h5 class="card-title text-center mb-4">Product App Head Office</h5>
				<p class="card-text">Aman Apartment Tower-A</p>
				<p class="card-text">Noida Sector 73 1st Floor Room no 4</p>
				<p class="card-text">Gautam Buddha Nagar</p>
				<p class="card-text">Uttar Pradesh-201301</p>
				<a href="#" class="btn btn-outline-warning">location</a>
				<a href="${pageContext.request.contextPath}/" class="btn btn-outline-success">home page</a>
			</div>
		</div>

	</div>

</body>
</html>