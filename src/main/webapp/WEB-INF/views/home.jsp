<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<%@ include file="./base.jsp"%>
<title>Product App !</title>
</head>
<body>
	<div class="container text-center mt-4">
		<h3>Welcome to Product App</h3>

		<table class="table">
			<thead class="bg-secondary text-white">
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Product Name</th>
					<th scope="col">Description</th>
					<th scope="col">Price</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="p">
					<tr>
						<th scope="row">ProdSeq${p.pId }</th>
						<td>${p.pName }</td>
						<td>${p.description }</td>
						<th>&#8377 ${p.price }</th>
						<td><a href="delete/${p.pId}"><i class="far fa-trash-alt text-danger mr-2"></i></a>
						<a href="edit/${p.pId}"><i class="fas fa-edit text-secondary"></i></a>
						
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="addproduct" class="btn btn-outline-success">Add Product</a>
	</div>
</body>
</html>