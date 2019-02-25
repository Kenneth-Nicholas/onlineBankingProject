<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.user.Account" %>

<% Account account = (Account) session.getAttribute("account"); %>
    
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="ISO-8859-1">
		
		<title>Insert title here</title>
		
		<link rel="stylesheet" 
		      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		      crossorigin="anonymous">
		      
		<link rel="stylesheet" type="text/css" href="styles/styles.css">  
		  
	</head>
	
	<body>

	</body>
	
</html>

<!-- I need to add in a "Thank you for registering message." 
Then have them click the link to go to the login page. 
Then send the data over so that when they login it displays welcome whoever and their info. 
This will also be where they can deposit money, take money out, etc. -->