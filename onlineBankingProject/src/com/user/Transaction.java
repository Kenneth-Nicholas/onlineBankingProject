package com.user;

import java.text.DecimalFormat;

public class Transaction {
	
	private double amount;
	private String transactionType;
	private String vendorName;
	private Address vendorAddress=new Address();
	
	public Transaction() {
		
		super();
		
	}

	public Transaction(double amount, String transactionType, String vendorName, Address vendorAddress) {
		
		super();
		
		this.amount = amount;
		this.transactionType = transactionType;
		this.vendorName = vendorName;
		this.vendorAddress = vendorAddress;
		
	}

	public double getAmount() {
		
		DecimalFormat df = new DecimalFormat("#.00");
		
		String formatted = df.format(this.amount);
		
		Double amountChanged = Double.parseDouble(formatted);
		
		return amountChanged;
		
	}

	public void setAmount(double amount) {
		
		this.amount = amount;
		
	}
	
	public String getTransactionType() {
		
		return transactionType;
		
	}
	
	public void setTransactionType(String transactionType) {
		
		this.transactionType = transactionType;
		
	}
	
	public String getVendorName() {
		
		return vendorName;
		
	}
	
	public void setVendorName(String vendorName) {
		
		this.vendorName = vendorName;
		
	}

	public Address getVendorAddress() {
		
		return vendorAddress;
		
	}

	public void setVendorAddress(Address vendorAddress) {
		
		this.vendorAddress = vendorAddress;
		
	}

	@Override
	public boolean equals(Object obj) {
		
		if (this == obj)
			return true;
		
		if (obj == null)
			return false;
		
		if (getClass() != obj.getClass())
			return false;
		
		Transaction other = (Transaction) obj;
		
		if (vendorAddress == null) {
			
			if (other.vendorAddress != null)
				return false;
			
		} else if (!vendorAddress.equals(other.vendorAddress))
			return false;
		
		if (Double.doubleToLongBits(amount) != Double.doubleToLongBits(other.amount))
			return false;
		
		if (transactionType == null) {
			
			if (other.transactionType != null)
				return false;
			
		} else if (!transactionType.equals(other.transactionType))
			return false;
		
		if (vendorName == null) {
			
			if (other.vendorName != null)
				return false;
			
		} else if (!vendorName.equals(other.vendorName))
			return false;
		
		return true;
		
	}

	@Override
	public String toString() {
			
			return "Transaction amount: " + amount + "<br>Transaction Type: " + transactionType + "<br>Vendor Name: " + vendorName + "<br>Vendor Address: <br>" + vendorAddress.toString();
			
	}

}