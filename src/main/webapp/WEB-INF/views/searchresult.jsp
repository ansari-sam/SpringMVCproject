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
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base.jsp"%>
<title>Result : online Shopping Management</title>
</head>
<body>
	<!--nav start  -->
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
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link text-white"
					href="logout">Logout</a></li>
			</ul>

		</div>
	</nav>


	<!--nav end  -->
	
	<div class="container text-center">
	<h4 style="color:green">Searching result ...</h4>
	<h3 style="color:red">${res}</h3>
	
	</div>

	<div class="card-columns">
		<%
		List<HousesAndAppartments> res = (List<HousesAndAppartments>)request.getAttribute("result");
		
		if(!res.isEmpty()){
		for (HousesAndAppartments searchresult : res) {
		%>
		<div class="card">
			<img class="card-img-top"
				src="<c:url value='/resourses/img/card-img.jpg' />"
				alt="Card image cap">
			<div class="card-body">
				<h5 class="card-title">
					&#36;<%=searchresult.getHouseRate()%></h5>
					<p class="card-text">
								<%=searchresult.getDetails().getBathRooms()%>Bath&nbsp;&nbsp;<%=searchresult.getDetails().getBedRooms()%>Bds&nbsp;&nbsp;<%=searchresult.getDetails().getBuilUpArea()%>&nbsp;ft2
							</p>
							<p class="card-text">
								<%=searchresult.getHouseType()%></p>
							<p class="card-text">

								<small class="text-muted mr-5"> <%=searchresult.getLocation()%></small>
								<small class="text-muted ml-3">Last updated <%=searchresult.getAddedDate()%></small>
							</p>
							<p>
								<a href="showpostdetails?id=<%=searchresult.getHAId()%>"
									class="btn btn-outline-warning">show more</a>
							</p>
			</div>
		</div>
		<%
			}
		}
		%>
	</div>
	

</body>
</html>