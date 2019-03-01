<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="ISO-8859-1">

		<title>First Bank of Humanity - Login</title>
		
		<link rel="stylesheet" 
		      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		      crossorigin="anonymous">
		      
		<link rel="stylesheet" type="text/css" href="styles/styles.css">

	</head>

	<body>

		<div class="body" id="index">

		<h1>First Bank of Humanity</h1>	

		<img class="typing" src="images/cavemanComputer.jpg">
		
		<h1>Login</h1> 

		<form class="container"> 
		
			<div class="formBackground">
			
				<h4 style="color:rgb(0, 255, 0)">Account:</h4>
				
				<div class="form-group">
					<label for="username">Username</label>
					<input type="text" class="form-control" name="username" id="username" placeholder="Username">
				</div>

				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" name="password" id="password" placeholder="Password">
				</div>
				
				<button type="submit" class="btn btn-default">Login</button>

				<p class="linkToRegister">

					<a href="register.jsp" class="toRegister">Link to Registration Page</a>

				</p>
				
			</div>

		</form>
		
		</div>

	</body>

</html>