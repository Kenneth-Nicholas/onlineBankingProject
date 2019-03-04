package com.user;

import java.text.DecimalFormat;
import java.util.ArrayList;

public class Account {
	
	private int accountNumber = 0;
	private double accountBalance = 0.0d;
	private ArrayList<Transaction> transactions = new ArrayList<Transaction>();
	
	public Account() {
		
		super();
		
		accountNumber++;
	}

	public Account(double accountBalance, ArrayList<Transaction> transactions) {
		
		super();
		
		this.accountBalance = accountBalance;
		this.transactions = transactions;
		
		accountNumber++;

	}
	
	public int getAccountNumber() {
		
		return accountNumber;
		
	}
	
	public Double getAccountBalance() {
		
		DecimalFormat df = new DecimalFormat("0.00");
		
		String formatted = df.format(this.accountBalance);
		
		this.accountBalance = Double.parseDouble(formatted);
		
		return accountBalance;
	}
	
	public void setAccountBalance(double accountBalance) {
		
		DecimalFormat df = new DecimalFormat("0.00");
		
		String formatted = df.format(accountBalance);
		
		this.accountBalance = Double.parseDouble(formatted);
		
	}
	
	public ArrayList<Transaction> getTransactions() {
		
		return transactions;
		
	}
	
	public void setTransactions(ArrayList<Transaction> transactions) {
		
		this.transactions = transactions;
		
	}

	@Override
	public boolean equals(Object obj) {
		
		if (this == obj)
			return true;
		
		if (obj == null)
			return false;
		
		if (getClass() != obj.getClass())
			return false;
		
		Account other = (Account) obj;
		
		if (Double.doubleToLongBits(accountBalance) != Double.doubleToLongBits(other.accountBalance))
			return false;
		
		if (accountNumber != other.accountNumber)
			return false;
		
		if (transactions == null) {
			
			if (other.transactions != null)
				return false;
			
		} else if (!transactions.equals(other.transactions))
			return false;
		
		return true;
		
	}

	@Override
	public String toString() {
		
		return "Account Number: " + accountNumber + "<br>Account Balance: " + accountBalance + "<br>Transactions: " + transactions;
		
	}

}