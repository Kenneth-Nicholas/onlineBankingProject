<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="ISO-8859-1">

		<title>Bank Login</title>

		<link rel="stylesheet" type="text/css" href="styles/styles.css">
		
		<link rel="stylesheet" 
		      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		      crossorigin="anonymous">

	</head>

	<body>

		<div class="body">

		<h1>First Bank of Humanity</h1>	

		<img class="typing" src="images/cavemanComputer.jpg">

		<div id="bankLogin">

		<a class="hiddenLoginAnchor" id="toLogin"></a>

		<div id="wrapper">

		<div id="login" class="animateLogin">

			<form  action="mysuperscript.php" autocomplete="on"> 

				<h1>Login</h1> 

				<p> 

					<label for="username" class="username" data-icon="u" > Username: </label>
					<input id="username" name="username" required="required" type="text" placeholder="Username"/>

				</p>

				<p> 

					<label for="password" class="loginPassword" data-icon="p"> Password: </label>
					<input id="password" name="password" required="required" type="password" placeholder="Password" /> 

				</p>

				<p class="keepLogin"> 

					<input type="checkbox" name="loginKeeping" id="loginKeeping" value="loginKeeping" /> 
					<label for="loginkeeping"> Keep me logged in </label>

				</p>

				<p class="loginButton"> 

					<input type="submit" value="Login" /> 

				</p>

				<p class="linkToRegister">

					<a href="register.jsp" class="toRegister"> Register </a>

				</p>

			</form>

		</div>

		</div>

		</div>  
		
		</div>

	</body>

</html>