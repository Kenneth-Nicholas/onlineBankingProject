<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<%@ page import="com.user.Customer" %>

<% Customer customer = (Customer) session.getAttribute("customer"); %>
    
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
					
					<h1>Hello, <% out.print(customer.getFirstName()); %> <% out.print(customer.getLastName()); %></h1>
					
					<p>Thank you for choosing <span style="color:rgb(0, 255, 0)">First Bank of Humanity!</span>
					Where Banking is so easy, a caveman could do it.</p> 
					
					<br>
					
					<p style="color:rgb(0, 255, 0)">Displaying account details</p>
					
					<p>Current account balance: <fmt:formatNumber type="number" minFractionDigits="2" value="${accountBalance}"/> </p>
					
					<br>
					
					<p><% out.print(customer.toString()); %></p>
					
				</div>
					
				<div id="navbar" class="navbar-collapse collapse"></div>
					
			</div>
		
		</nav>
		
		<div class="accountTransactions">
		
			<form class="accountForm" action="DepositServlet" method="post">
			
				<div class="form-group">
					<label for="Make Deposit" style="color:rgb(0, 255, 0)">Make Deposit</label>
					<input type="text" class="form-control" name="depositAmount" id="depositAmount" placeholder="Deposit Amount">
					<!--  Make is so that you loop through all the accounts so that the person can select which account they're depositing to -->	
				</div>
				
				<label for="cashOrCheck" >Cash or Check</label>
				<select class="form-control" name="cashOrCheck">			
					<option value="Cash">Cash</option>	
					<option value="Check">Check</option>							
				</select>
				<br>
	
				<button type="submit" class="btn btn-default">Complete Deposit</button>
				
			</form>
			
			<br>
			
			<form class="accountForm" action="WithdrawalServlet" method="post">
			
				<div class="form-group">
					<label for="Make Withdrawal" style="color:rgb(0, 255, 0)">Make Withdrawal</label>
					<input type="text" class="form-control" name="withdrawalAmount" id="makeWithdrawal" placeholder="Withdrawal Amount">
					<!--  Make is so that you loop through all the accounts so that the person can select which account they're withdrawing from -->
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
					
				<!--  Make is so that you loop through all the accounts so that the person can select which account they're charging to -->
				
				<button type="submit" class="btn btn-default">Submit Transaction</button>
				
			</form>
			
			<br>
			
<!-- HERE WE WILL LOOP THROUGH AN ACCOUNT'S TRANSACTION HISTORY, and loop through all accounts printing them out and their history -->			
			
				<c:if test="${customer.getAccounts().get(0).getTransactions() != null}">
					
					<table style="width:100%">
					
  						<tr>
  						
    						<th>Amount</th>
    						<th>Transaction Type</th> 
    						<th>Vendor Name</th>
    						<th>Vendor Address</th>
    						
  						</tr>
 						 
					    <c:forEach var="transaction" items="${transactions}">
 						 
							<tr>      
    						
								<td><fmt:formatNumber type="number" minFractionDigits="2" value="${transaction.amount}" /></td>
								<td><c:out value="${transaction.transactionType}"/></td>
								<td><c:out value="${transaction.vendorName}"/></td>
								<td><c:out value="${transaction.vendorAddress}"/></td>
                                
							</tr>
                            
						</c:forEach>

					</table>
						
				</c:if>
			
			</div>
		
		</div>

	</body>
	
</html>