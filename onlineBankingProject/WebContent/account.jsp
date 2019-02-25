<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.user.Account" %>

<% Account account = (Account) session.getAttribute("account"); %>
    
<!DOCTYPE html>

<html>

	<head>
	
		<meta charset="ISO-8859-1">
		
		<title>First Bank of Humanity - Account</title>
		
		<link rel="stylesheet" 
		      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		      crossorigin="anonymous">
		      
		<link rel="stylesheet" type="text/css" href="styles/styles.css">  
		  
	</head>
	
	<body>
	
		<div class="body">
	
		<nav class="navbar navbar-inverse navbar-fixed-top">
		
			<div class="accountGreeting">
				
				<div class="navbar-header">
				
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					
					</button>
					
					<h1>Hello, <% out.print(account.getFirstName()); %> <% out.print(account.getLastName()); %></h1>
					
					<p>Thank you for choosing <span style="color:rgb(0, 255, 0)">First Bank of Humanity!</span>
					Where Banking is so easy, a caveman could do it.</p> 
					
					<br>
					
					<p style="color:rgb(0, 255, 0)">Displaying account details</p>
					
					<br>
					
					<p><% out.print(account.toString()); %></p>
					
					<p style="color:rgb(0, 255, 0)"><% out.print("Your current Accound Balance is: " + account.getAccountBalance()); %></p>
					
				</div>
					
				<div id="navbar" class="navbar-collapse collapse"></div>
					
			</div>
		
		</nav>
		
		<div class="accountTransactions">
		
			<form class="accountForm" action="DepositServlet" method="get">
			
				<div class="form-group">
					<label for="Make Deposit" style="color:rgb(0, 255, 0)">Make Deposit</label>
					<input type="text" class="form-control" name="depositAmount" id="depositAmount" placeholder="Deposit Amount">
				</div>
				
				<button type="submit" class="btn btn-default">Complete Deposit</button>
				
			</form>
			
			<br>
			
			<form class="accountForm" action="WithdrawalServlet" method="post">
			
				<div class="form-group">
					<label for="Make Withdrawal" style="color:rgb(0, 255, 0)">Make Withdrawal</label>
					<input type="text" class="form-control" name="withdrawalAmount" id="makeWithdrawal" placeholder="Withdrawal Amount">
				</div>
				
				<button type="submit" class="btn btn-default">Complete Withdrawal</button>
				
			</form>
			
			<br>
			
			<form class="accountForm" action="TransactionServlet" method="post">
			
				<div class="form-group">
					<label for="Make Transaction" style="color:rgb(0, 255, 0)">Make Transaction</label>
					<input type="text" class="form-control" name="transactionAmount" id="makeTransaction" placeholder="Transaction Amount">
				</div>
				
				<div class="form-group">
					<label for="Vendor Name">Vendor Name</label>
					<input type="text" class="form-control" name="vendorName" id="vendorName" placeholder="Vendor Name">
				</div>
				
				<div class="form-group">
					<label for="Vendor Street Address">Vendor Street Address</label>
					<input type="text" class="form-control" name="vendorStreetAddress" id="vendorStreetAddress" placeholder="Vendor Street Address">
				</div>
				
				<div class="form-group">
					<label for="Vendor City">Vendor City</label>
					<input type="text" class="form-control" name="vendorCity" id="vendorCity" placeholder="Vendor City">
				</div>
				
				<div class="form-group">
					<label for="Vendor State">Vendor State</label>
					<input type="text" class="form-control" name="vendorState" id="vendorState" placeholder="Vendor State">
				</div>
				
				<div class="form-group">
					<label for="Vendor Zip Code">Vendor Zip Code</label>
					<input type="text" class="form-control" name="vendorZipCode" id="vendorZipCode" placeholder="Vendor Zip Code">
				</div>
				
				<button type="submit" class="btn btn-default">Submit Transaction</button>
				
			</form>
			
			<br>
			
		</div>
		
		</div>

	</body>
	
</html>