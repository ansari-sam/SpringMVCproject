<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%
	Object customer = session.getAttribute("current-customer");
if (customer == null) {
	session.setAttribute("msg", "Try again, Please login first");
	response.sendRedirect("login");
	session.removeAttribute("current-customer");
}
%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<%@ include file="./base.jsp"%>
<title>Product App : Add Product</title>
</head>
<body>
	<%@ include file="./mainNav.jsp"%>
	<div class="container text-center mt-4">
		<h3>Add Product to Database</h3>
		<hr>
	</div>
	<div class="container">
		<form action="saveProduct" method="post">
			<div class="form-group">
				<label for="pName">Product Name</label> <input type="text"
					class="form-control" id="pName" name="pName">
			</div>
			<div class="form-group">
				<label for="textarea">Description</label>
				<textarea class="form-control" id="textarea" rows="3"
					name="description"></textarea>
			</div>
			<div class="form-group">
				<label for="price">Price</label> <input type="text"
					class="form-control" id="price" name="price">
			</div>

			<div class="container text-center">
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-outline-warning">Back</a>
				<button type="submit" class="btn btn-primary">Save</button>
			</div>
		</form>

	</div>
</body>
</html>