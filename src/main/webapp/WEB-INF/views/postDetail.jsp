<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	Object customer = session.getAttribute("current-customer");
if (customer == null) {
	session.setAttribute("msg", "Try again, Please login first");
	response.sendRedirect("login");
	session.removeAttribute("current-customer");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<title>Welcome RealState</title>
</head>
<body>

	<div class="container-fluid"
		style="height: 60px; background-color: gray;">
		<a href="#" class="btn btn-primary"
			style="color: white; margin-top: 10px">Back to home page</a>

	</div>
	<div class="container col-8 offset-2">
		<div class="card">
			<div class="card-header text-center">
				<h3>POST YOUR AD</h3>
				<%
					String msg = (String) request.getAttribute("msg");
				if (msg != null) {
				%>
				<h3 style="color:green"><%=msg%></h3>

				<%
					}
				%>
			</div>
			<div class="card-body">
				<h4>Selected Category</h4>
				<p>For Sale: Houses and Apartments</p>
				<hr>
				<hr>
				<form action="postProcess" method="post">
					<h5>Include Some Details</h5>
					<div class="form-group mt-2">
					<label for="type">Type* :</label><br>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="HouseType" id="option1" autocomplete="off"
								checked value="Apartments"> Apartments
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="HouseType" id="option2" autocomplete="off" value="Houses & Villas"> Houses & Villas
							
							</label> 
							<label class="btn btn-secondary"> <input type="radio"
								name="HouseType" id="option3" autocomplete="off" value="Builder Floor"> Builder Floor
							</label>
							
						</div>
					</div>
					<hr>
					<div class="form-group mt-2">
						<label for="BedRoomType">BedRoomType </label><br> 
							
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="BedRoomType" id="option1" autocomplete="off"
								checked value="1"> 1 BHK
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="BedRoomType" id="option2" autocomplete="off" value="2"> 2 BHK
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="BedRoomType" id="option3" autocomplete="off" value="3"> 3 BHK
							</label>
							
							<label class="btn btn-secondary"> <input type="radio"
								name="BedRoomType" id="option4" autocomplete="off" value="4">4 BHK
							</label>
							
						</div>
							
							
					</div>
					
					
					
					
					<hr>
					<div class="form-group mt-2">
						<label for="Action">Action </label><br> 
							
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="Action" id="option1" autocomplete="off"
								checked value="Rent"> Rent
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="Action" id="option2" autocomplete="off" value="Lease">Lease
							
							</label> 
							<label class="btn btn-secondary"> <input type="radio"
								name="Action" id="option3" autocomplete="off" value="Sell"> Sell
							</label>
							
						</div>
							
					</div>
					
					
					
					<hr>
					<div class="form-group mt-2">
						<label for="Location">Location </label><br> <input
							type="text" placeholder="Delhi" id="Location" name="Location">
					</div>
					<hr>
					<div class="form-group mt-2">
						<label for="propertyFeatures"><b>Property Feature</b> </label><br>
						<select multiple class="form-control" name="propertyFeatures"
							id="propertyFeatures">
							<option>Air conditioning</option>
							<option>Balcony</option>
							<option>Built-in wardrobes</option>
							<option>Dishwasher</option>
							<option>Deck</option>
							<option>Fully fenced</option>
						</select>
					</div>
					<hr>

					<div class="form-group mt-2">
						<label><b>Address :</b> </label><br>
						<div>
							<label for="Street" class="mr-3">Street: </label> <input
								type="text" id="Street" name="address.Street">
						</div>

						<div>
							<label for="City" class="mr-4">City: </label> <input type="text"
								id="City" name="address.City">
						</div>
						<div>
							<label for="State" class="mr-3">State: </label> <input
								type="text" id="State" name="address.State">
						</div>
						<div>
							<label for="zipCode" class="mr-3">zipCode: </label> <input
								type="text" id="zipCode" name="address.zipCode">
						</div>
					</div>
					<hr>
					<div class="form-group mt-2">
						<label><b>Details :</b> </label><br>
						<div class="mt-2">
							<label for="bedRooms" class="mr-3">bedRooms: </label>
								
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="details.bedRooms" id="option1" autocomplete="off"
								checked value="1"> 1
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="details.bedRooms" id="option2" autocomplete="off" value="2">2
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="details.bedRooms" id="option3" autocomplete="off" value="3"> 3
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="details.bedRooms" id="option4" autocomplete="off" value="4"> 4
							</label>
							
						</div>
								
						</div>
						<div class="mt-2">
							<label for="bathRooms" class="mr-3">bathRooms: </label> 
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="details.bathRooms" id="option1" autocomplete="off"
								checked value="1"> 1
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="details.bathRooms" id="option2" autocomplete="off" value="2">2
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="details.bathRooms" id="option3" autocomplete="off" value="3"> 3
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="details.bathRooms" id="option4" autocomplete="off" value="4"> 4
							</label>
							
						</div>

						</div>

						<div class="mt-2">
							<label for="builUpArea" class="mr-4">builtupArea (sft*):
							</label> <input type="text" id="builUpArea" name="details.builUpArea">
						</div>

						<div class="mt-2">
							<label for="totalFloors" class="mr-3">totalFloors: </label> 
							
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="details.totalFloors" id="option1" autocomplete="off"
								checked value="1"> 1
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="details.totalFloors" id="option2" autocomplete="off" value="2">2
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="details.totalFloors" id="option3" autocomplete="off" value="3"> 3
							</label>
							<label class="btn btn-secondary"> <input type="radio"
								name="details.totalFloors" id="option4" autocomplete="off" value="4"> 4
							</label>
							
						</div>

						</div>

						<div class="mt-2">
							<label for="floorNo" class="mr-4">floorNo: </label> <input
								type="text" id="floorNo" name="details.floorNo">
						</div>

						<div class="mt-2">
							<label for="carParking" class="mr-4">carParking: </label> <input
								type="text" id="carParking" name="details.carParking">
						</div>

						<div class="form-group mt-2">
							<label for="facing">Facing : </label> <select
								name="details.facing" id="facing">
								<option>North</option>
								<option>South</option>
								<option>East</option>
								<option>West</option>
								<option>North-East</option>
								<option>South-West</option>
							</select>
						</div>
					</div>
					<hr>
					<div>
						<div class="mt-2">
							<label for="Description" class="mr-4"><b>Description
									:</b> </label>
							<textarea class="form-control" name="Description" rows="8"
								cols=""></textarea>
						</div>
					</div>
					<hr>
					<div class="mt-3">
						<label for="ListedBy" class="mr-3">ListedBy: </label><br> 
						
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="ListedBy" id="option1" autocomplete="off"
								checked value="Owner"> Owner
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="ListedBy" id="option2" autocomplete="off" value="Other">Other
							
							</label> 
							
						</div>
							
							
					</div>
					<hr>
					<div class="mt-2">
						<label for="HouseRate" class="mr-4"><b>SET A PRICE</b> </label><br>
						<p>Price*</p>
						<input type="text" id="HouseRate" name="HouseRate"
							placeholder="$ |">
					</div>

					<hr>
					<div class="mt-3">
						<label for="Availability" class="mr-4"><b>Availability
								:</b> </label> 
								
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
							
							<label class="btn btn-secondary mr-2 active"> <input
								type="radio" name="Availability" id="option1" autocomplete="off"
								checked value="available"> Available
							
							</label> 
							<label class="btn btn-secondary mr-2"> <input type="radio"
								name="Availability" id="option2" autocomplete="off" value="notAvailable">Not Available
							
							</label> 
							
						</div>

					</div>
					<hr>
					<!-- <div class="card">
							<div class="card-body">
							<h6>REVIEW YOUR DETAILS</h6>
							<div class="row">
							<div class="col-4 offset-1">
							<img alt="" src="" style="height:100px;width:100px;border-radius: 50%;">
							
							</div>
							<div class="col-4">
							
							<div class="mt-2"><label for="userName" class="mr-4"><b>Name :</b> </label><br>
						
						<input type="text" id="userName"
							name="userName" placeholder="" value=""> </div>
							<div class=""><label for="userPhone" class="mr-4"><b>Phone Number :</b> </label><br>
						
						<input type="text" id="userPhone"
							name="userPhone" placeholder="" value=""> </div>
							</div>
							
							</div>
							
							</div>
							
							
							</div> -->

					<hr>

					<div class="form-group mt-3 text-center">

						<button type="submit" class="btn btn-success">Add Now</button>


					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>