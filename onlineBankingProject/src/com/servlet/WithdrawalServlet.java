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
 * Servlet implementation class WithdrawalServlet
 */
@WebServlet("/WithdrawalServlet")
public class WithdrawalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WithdrawalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Double withdrawalAmount = Double.parseDouble(request.getParameter("withdrawalAmount"));
		
		HttpSession session = request.getSession(true);
		
		Customer customer = (Customer)session.getAttribute("customer");
		
		ArrayList<Account> accounts = customer.getAccounts();
		
		ArrayList<Transaction> transactions = accounts.get(0).getTransactions();
		
		transactions.get(0).setAmount(withdrawalAmount);
		transactions.get(0).setTransactionType("Withdrawal");
		transactions.get(0).setVendorName("N/A");
		Address address = new Address("N/A", "N/A", "N/A", "N/A");
		transactions.get(0).setVendorAddress(address);
		
		accounts.get(0).setTransactions(transactions);
		
		accounts.get(0).setAccountBalance(accounts.get(0).getAccountBalance() - withdrawalAmount);
		
		customer.setAccounts(accounts);

		session.setAttribute("customer", customer);
	
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
