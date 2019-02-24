<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="ISO-8859-1">

		<title>Bank Register</title>

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
		

		<div id="bankRegister">
			
			<a class="hiddenRegisterAnchor" id="toRegister"></a>

			<div id="wrapper">

				<div id="register" class="animateRegister">

					<form  action="mysuperscript.php" autocomplete="on"> 

						<h1> Register </h1> 

						<p> 

							<label for="usernameSignUp" class="usernameSignUp" data-icon="u"> Username: </label>
							<input id="usernameSignUp" name="usernameSignUp" required="required" type="text" placeholder="Username" />

						</p>

						<p> 

							<label for="emailSignUp" class="emailSignUp" data-icon="e" > E-mail Address: </label>
							<input id="emailSignUp" name="emailSignUp" required="required" type="email" placeholder="E-mail Address"/> 

						</p>

						<p> 

							<label for="passwordSignUp" class="passwordSignUp" data-icon="p"> Create Password: </label>
							<input id="passwordSignUp" name="passwordSignUp" required="required" type="password" placeholder="Create Password"/>

						</p>

						<p> 

							<label for="passwordSignUpConfirmation" class="passwordSignUpConfirmation" data-icon="p"> Confirm Password: </label>
							<input id="passwordSignUpConfirmation" name="passwordSignUpConfirmation" required="required" type="password" placeholder="Confirm Password"/>

						</p>

						<p class="signUpButton"> 

							<input type="submit" value="Sign up"/> 

						</p>

						<p class="linkToLogin"> 

							<a href="index.jsp" class="toLogin"> Login </a>

						</p>

					</form>

				</div>

			</div>

		</div> 
		
		</div> 

	</body>

</html>