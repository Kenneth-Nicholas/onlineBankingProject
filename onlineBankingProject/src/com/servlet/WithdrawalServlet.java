package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Account;
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
		
		Account account = (Account)session.getAttribute("account");
		
		account.setAccountBalance(account.getAccountBalance() - withdrawalAmount);

		session.setAttribute("account", account);
	
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