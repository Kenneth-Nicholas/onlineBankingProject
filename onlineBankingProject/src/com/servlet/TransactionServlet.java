package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Customer;
import com.user.Account;
import com.user.Transaction;
import com.user.Address;

/**
 * Servlet implementation class TransactionServlet
 */
@WebServlet("/TransactionServlet")
public class TransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Double transactionAmount = Double.parseDouble(request.getParameter("transactionAmount"));
		
		HttpSession session = request.getSession(true);
		
		Customer customer = new Customer();
		
		customer = (Customer)session.getAttribute("customer");
		
		ArrayList<Account> accounts = customer.getAccounts();

		ArrayList<Transaction> transactions = customer.getAccounts().get(0).getTransactions();
		Transaction transaction = new Transaction();
		
		transaction.setAmount(transactionAmount);
		transaction.setTransactionType("Charge");
		transaction.setVendorName(request.getParameter("vendorName"));
		Address address = new Address(request.getParameter("vendorStreetAddress"), request.getParameter("vendorCity"), request.getParameter("vendorState"), request.getParameter("vendorZipCode"));
		transaction.setVendorAddress(address);
		
		transactions.add(transaction);
		
		accounts.get(0).setAccountBalance(accounts.get(0).getAccountBalance() - transactionAmount);
			
		customer.getAccounts().get(0).setTransactions(transactions);
		customer.setAccounts(accounts);

		session.setAttribute("customer", customer);
		session.setAttribute("transactions", transactions);
	
		RequestDispatcher rs = request.getRequestDispatcher("account.jsp");
		rs.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
