<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<%@ include file="./base.jsp"%>
<title>Product App : Update Product</title>
</head>
<body>
	<div class="container text-center mt-4">
		<h3>Change the Product details</h3>
		<hr>
	</div>
	<div class="container">
		<form action="${pageContext.request.contextPath}/update" method="post">
			<input type="hidden" value="${product.pId }" name="pId"></input>
			<div class="form-group">
				<label for="pName">Product Name</label> <input type="text"
					class="form-control" id="pName" name="pName"
					value="${product.pName}">
			</div>
			<div class="form-group">
				<label for="textarea">Description</label>
				<textarea class="form-control" id="textarea" rows="3"
					name="textarea">${product.description}</textarea>
			</div>
			<div class="form-group">
				<label for="price">Price</label> <input type="text"
					class="form-control" id="price" name="price"
					value="${product.price}">
			</div>

			<div class="container text-center">
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-outline-warning">Back</a>
				<button type="submit" class="btn btn-warning">Update</button>
			</div>
		</form>

	</div>

</body>
</html>