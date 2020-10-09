<%@page import="com.springMVCProject.Entities.*"%>
<%
	Object customer = session.getAttribute("current-customer");
if (customer == null) {
	session.setAttribute("msg", "Try again, Please login first");
	response.sendRedirect("login");
	session.removeAttribute("current-customer");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>Welcome : online Shopping Management</title>
</head>
<body>

	<!--Navbar start  -->
	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<a class="navbar-brand text-white" href="#">Product App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link text-white"
					href="#">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link text-white"
					href="#">Services</a></li>
				<li class="nav-item active"><a class="nav-link text-white"
					href="contact">Contact</a></li>
				<li class="nav-item active"><a class="nav-link text-white"
					href="addproduct">Add Product</a></li>
			</ul>
			<ul class="navbar-nav ml-auto">

				<li class="nav-item active"><a class="nav-link text-white"
					href="#" data-toggle="modal" data-target="#exampleModal">Account</a></li>
				<li class="nav-item active"><a class="nav-link text-white"
					href="logout">Logout</a></li>
			</ul>

		</div>
	</nav>
	<!--Navbar end  -->

	<!-- Main Home Divided in to two part :on right side we add a card for addinng realState house Desc and on left we have to display all listed houses or apartment -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-9">
				<div class="container text-center my-3">
					<form action="search" method="get">
						<table class="table">
							<tr>
								<td><input class="form-control" style="width: 100%"
									type="text" name="search"
									placeholder="search by location, bedroomType,house range">
								</td>
								<td>
									<div class="text-left"><button type="submit" class="btn btn-outline-success">
										Search</button></div>
								</td>
							</tr>
						</table>

					</form>
				</div>
				<!-- show HousesAndApartment -->
				<div class="card-columns">
					<%
					List<HousesAndAppartments> list = (List<HousesAndAppartments>) request.getAttribute("availableHouAndApart");
					for (HousesAndAppartments houses : list) {
					%>
					<!-- cards -->

					<div class="card">
						<img class="card-img-top"
							src="<c:url value='/resourses/img/card-img.jpg' />"
							alt="Card image cap">
						<div class="card-body">
							<h5 class="card-title">
								&#36;<%=houses.getHouseRate()%></h5>
							<p class="card-text">
								<%=houses.getDetails().getBathRooms()%>Bath&nbsp;&nbsp;<%=houses.getDetails().getBedRooms()%>Bds&nbsp;&nbsp;<%=houses.getDetails().getBuilUpArea()%>&nbsp;ft2
							</p>
							<p class="card-text">
								<%=houses.getHouseType()%></p>
							<p class="card-text">

								<small class="text-muted mr-5"> <%=houses.getLocation()%></small>
								<small class="text-muted ml-3">Last updated <%=houses.getAddedDate()%></small>
							</p>
							<p>
								<a href="showpostdetails?id=<%=houses.getHAId()%>"
									class="btn btn-outline-warning">show more</a>
							</p>
						</div>
					</div>
					<%
						}
					%>
				</div>


			</div>

			<!-- card for add -->
			<div class="col-3 mt-5">
				<div class="card" style="">
					<div class="card-body">
						<h5 class="card-title">For Sale or Rent</h5>
						<p class="card-text">Prepare to sell with our selling guides,
							insights and tools, understand how to get the best price for your
							property and choose the right real estate agent.</p>
						<h6>For Sell or Rent : Houses & Apartment</h6>
						<a href="postDetail" class="btn btn-outline-success">Click
							here to add details</a>
					</div>
				</div>

			</div>
		</div>

	</div>


	<!-- main home end -->

	<!-- Account Modal start -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<div class="container text-center">
						<i class="far fa-user-circle fa-5x"></i>
						<h5 class="modal-title" id="exampleModalLabel">${customer.customerName}</h5>
					</div>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table class="table table-striped">
						<!-- <thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First</th>
								<th scope="col">Last</th>
								<th scope="col">Handle</th>
							</tr>
						</thead> -->
						<tbody>
							<tr>
								<th scope="row">Customer Id :</th>
								<td>${customer.customerId}</td>

							</tr>
							<tr>
								<th scope="row">Email :</th>
								<td>${customer.customerEmail}</td>

							</tr>
							<tr>
								<th scope="row">D.O.B :</th>
								<td>${customer.dob}</td>
							</tr>
							<tr>
								<th scope="row">Password</th>
								<td>${customer.password}</td>
							</tr>
							<tr>
								<th scope="row">Address</th>
								<td><button type="button" class="btn btn-link"
										data-toggle="modal" data-target="#exampleModalCenter1">
										Add Address</button></td>
							</tr>
							<tr>
								<th scope="row">Card</th>
								<td><button type="button" class="btn btn-link"
										data-toggle="modal" data-target="#exampleModalCenter2">
										Add Card</button></td>
							</tr>
						</tbody>
					</table>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Edit</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Account Modal end -->

	<!-- Address details start -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter1" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Fill
						Address:</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="inputAddress">Address line 1</label> <input
								type="text" class="form-control" id="inputAddress"
								placeholder="1234 Main St">
						</div>
						<div class="form-group">
							<label for="inputAddress2">Address line 2</label> <input
								type="text" class="form-control" id="inputAddress2"
								placeholder="Apartment, studio, or floor">
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputCity">City</label> <input type="text"
									class="form-control" id="inputCity">
							</div>
							<div class="form-group col-md-4">
								<label for="inputState">State</label> <input type="text"
									class="form-control" id="inputState">
							</div>
							<div class="form-group col-md-2">
								<label for="inputZip">Zip</label> <input type="text"
									class="form-control" id="inputZip">
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Save</button>
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- Address details end -->

	<!-- card details start -->
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter2" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle">Card
						Details:</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="cardField" method="post">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="inputCardNo">Enter 16-digit card no.</label> <input
									type="text" class="form-control" id="inputCardNo" name="cardNo"
									placeholder="****-****-****-4532" maxlength="19">
							</div>
							<div class="form-group col-md-3">
								<label for="inputExpDate">Exp date</label> <input type="text"
									class="form-control" id="inputExpDate" name="expDate"
									placeholder="MM/YY" maxlength="5">
							</div>
						</div>
						<button type="submit" class="btn btn-primary">Save</button>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- card details end -->


	<!--JavaScript  -->

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha256-4+XzXVhsDmqanXGHaHvgh1gMQKX40OUvDEBTu8JcmNs="
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#inputCardNo").on("keyup", function() {
				var cNo = $(this).val().split("-").join("");
				if (cNo.length > 0) {
					cNo = cNo.match(new RegExp('.{1,4}', 'g')).join("-");
				}
				$(this).val(cNo);

			});

			$("#inputExpDate").on("keyup", function() {
				var cExp = $(this).val().split("/").join("");
				if (cExp.length > 0) {
					cExp = cExp.match(new RegExp('.{1,2}', 'g')).join("/");
				}
				$(this).val(cExp);

			});

		})
	</script>


</body>
</html>