<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="ISO-8859-1">

		<title>First Bank of Humanity - Register</title>
		
		<link rel="stylesheet" 
		      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		      crossorigin="anonymous">
		      
		<link rel="stylesheet" type="text/css" href="styles/styles.css">      

	</head>

	<body>

		<div class="body" id="register">

			<h1>First Bank of Humanity</h1>	

			<img class="typing" src="images/cavemanComputer.jpg">	
		
			<h1>Register</h1>

			<form class="container" action="RegistrationServlet" method="post">
			
				<div class="formBackground">
				
				<h4 style="color:rgb(0, 255, 0)">Name:</h4>
			
				<div class="form-group">
					<label for="firstName">First Name</label>
					<input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
				</div>
				
				<div class="form-group">
					<label for="lastName">Last Name</label>
					<input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
				</div>
				
				<h4 style="color:rgb(0, 255, 0)">Account Information:</h4>
				
				<div class="form-group">
					<label for="userName">Username</label>
					<input type="text" class="form-control" name="userName" id="userName" placeholder="Username">
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" name="password" id="password" placeholder="Password">
				</div>
				
				<h4 style="color:rgb(0, 255, 0)">Address:</h4>
				
				<div class="form-group">
					<label for="street">Street</label>
					<input type="text" class="form-control" name="street" id="street" placeholder="Street">
				</div>
				
				<div class="form-group">
					<label for="city">City</label>
					<input type="text" class="form-control" name="city" id="city" placeholder="City">
				</div>

				<div class="form-group">
					<label for="state">State</label>
					<input type="text" class="form-control" name="state" id="state" placeholder="State">
				</div>
				
				<div class="form-group">
					<label for="zipCode">Zip Code</label>
					<input type="text" class="form-control" name="zipCode" id="zipCode" placeholder="Zip Code">
				</div>
				
				<h4 style="color:rgb(0, 255, 0)">Contact Information:</h4>
				
				<div class="form-group">
					<label for="email">Email Address</label>
					<input type="text" class="form-control" name="emailAddress" id="emailAddress" placeholder="Email Address">
				</div>
				
				<div class="form-group">
					<label for="phoneNumber">Phone Number</label>
					<input type="text" class="form-control" name="phoneNumber" id="phoneNumber" placeholder="Phone Number">
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>
				
				<p class="linkToLogin"> 

					<a href="index.jsp" class="toLogin">Link to Login Page</a>

				</p>
				
				</div>
				
			</form>
			
		</div>
		
		<div class ="extraBackground">
		
		</div>

	</body>

</html>