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
<title>OSM : Post Details</title>
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
					href="logout">Logout</a></li>
			</ul>

		</div>
	</nav>
	<!--Navbar end  -->
	<div class="container mt-5">
		<%
			HousesAndAppartments availableHouAndApart = (HousesAndAppartments) request.getAttribute("HAById");
		%>
		<div class="row">

			<div class="col-8">

				<div class="card">
					<img class="card-img-top"
						src="<c:url value='/resourses/img/card-img.jpg' />"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Details :</h5>
						<table class="table">
							<tbody>
								<tr>
									<td>Type :</td>
									<td><%=availableHouAndApart.getHouseType()%></td>
									<td>Bedrooms :</td>
									<td><%=availableHouAndApart.getDetails().getBedRooms()%></td>
								</tr>
								<tr>
									<td>Bathrooms :</td>
									<td><%=availableHouAndApart.getDetails().getBathRooms()%></td>
									<td>Listed by :</td>
									<td><%=availableHouAndApart.getListedBy()%></td>
								</tr>
								<tr>
									<td>Builtup area :</td>
									<td><%=availableHouAndApart.getDetails().getBuilUpArea()%></td>
									<td>Total floors :</td>
									<td><%=availableHouAndApart.getDetails().getTotalFloors()%></td>
								</tr>
								<tr>
									<td>Floor No :</td>
									<td><%=availableHouAndApart.getDetails().getFloorNo()%></td>
									<td>Car Parking :</td>
									<td><%=availableHouAndApart.getDetails().getCarParking()%></td>
								</tr>
								<tr>
									<td>Facing :</td>
									<td><%=availableHouAndApart.getDetails().getFacing()%></td>
									<td>Maintenance (Monthly) :</td>
									<td>0</td>
								</tr>
							</tbody>
						</table>
						<h5 class="card-title">Description :</h5>
						<p class="card-text">
							<%=availableHouAndApart.getDescription()%></p>
						<p class="card-text">Attached / multi-unit dwellings Apartment
							(American English) or Flat (British English) – An individual unit
							in a multi-unit building. The boundaries of the apartment are
							generally defined by a perimeter of locked or lockable doors.
							Often seen in multi-story apartment buildings. Multi-family house
							– Often seen in multi-story detached buildings, where each floor
							is a separate apartment or unit. Terraced house (a. k. a.
							townhouse or rowhouse) – A number of single or multi-unit
							buildings in a continuous row with shared walls and no
							intervening space. Condominium (American English) – A building or
							complex, similar to apartments, owned by individuals. Common
							grounds and common areas within the complex are owned and shared
							jointly. In North America, there are townhouse or rowhouse style
							condominiums as well. The British equivalent is a block of flats.
							Cooperative (a. k. a. co-op) – A type of multiple ownership in
							which the residents of a multi-unit housing complex own shares in
							the cooperative corporation that owns the property, giving each
							resident the right to occupy a specific apartment or unit.</p>

					</div>
				</div>

				<div class="card mt-3">
					<div class="class-body">
						<h5 class="card-title p-3">Related Ads</h5>
						<div class="row">
							<div class="col-12">
								<div class="card-columns">
									<%
										List<HousesAndAppartments> AllavailableHouAndApart = (List<HousesAndAppartments>) request.getAttribute("relAds");
									for (HousesAndAppartments list : AllavailableHouAndApart) {
									%>
									<div class="card">
										<img class="card-img-top"
											src="<c:url value='/resourses/img/card-img.jpg' />"
											alt="Card image cap">
										<div class="card-body">
											<h5 class="card-title">
												&#36;<%=list.getHouseRate()%></h5>
											<p class="card-text">
												<%=list.getDetails().getBathRooms()%>Bath&nbsp;&nbsp;<%=list.getDetails().getBedRooms()%>Bds&nbsp;&nbsp;<%=list.getDetails().getBuilUpArea()%>&nbsp;ft2
											</p>
											<p class="card-text">
												<%=list.getHouseType()%></p>
											<p class="card-text">

												<small class="text-muted mr-5"> <%=list.getLocation()%></small>
												<small class="text-muted ml-3">Last updated <%=list.getAddedDate()%></small>
											</p>
											<p>
												<a href="showpostdetails?id=<%=list.getHAId()%>"
													class="btn btn-outline-warning">show more</a>
											</p>
										</div>
									</div>

									<%
										}
									%>
								</div>


							</div>


						</div>

					</div>

				</div>


			</div>

			<div class="col-4">
				<div class="card">
					<img class="card-img-top"
						src="<c:url value='/resourses/img/card-img.jpg' />"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">
							&#36;<%=availableHouAndApart.getHouseRate()%></h5>
						<p class="card-text">
							<%=availableHouAndApart.getDetails().getBathRooms()%>Bath&nbsp;&nbsp;<%=availableHouAndApart.getDetails().getBedRooms()%>Bds&nbsp;&nbsp;<%=availableHouAndApart.getDetails().getBuilUpArea()%>&nbsp;ft2
						</p>
						<p class="card-text">
							<%=availableHouAndApart.getHouseType()%></p>
						<p class="card-text">

							<small class="text-muted mr-5"> <%=availableHouAndApart.getLocation()%></small>
							<small class="text-muted ml-3">Last updated <%=availableHouAndApart.getAddedDate()%></small>
						</p>
					</div>
				</div>
				<div class="card mt-4">
					<div class="card-body">
						<h5 class="card-title">Seller Description</h5>

						<h6>Name : Demo Name</h6>
						<a href="#" class="btn btn-outline-primary my-2">Chat with
							Seller</a>
						<p class="card-text mt-2">
							&#128222;*** *** **** <a class="btn btn-link">show number</a>
						</p>
					</div>
				</div>
			</div>

		</div>

	</div>
</body>
</html>