package com.user;

public class Account {
	
	private String firstName;
	private String lastName;
	private String userName;
	private String password;
	private Address address;
	private String phoneNumber;
	private String emailAddress;
	private int accountNumber = 0;
	private double accountBalance = 0.0d;
	
	public Account() {
		
		super();
		
		accountNumber++;
	}

	public Account(String firstName, String lastName, String userName, String password, Address address, String phoneNumber, String emailAddress, double accountBalance) {
		
		super();
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.emailAddress = emailAddress;
		this.accountBalance = accountBalance;
		
		accountNumber++;

	}

	public String getFirstName() {
		
		return firstName;
		
	}

	public void setFirstName(String firstName) {
		
		this.firstName = firstName;
		
	}

	public String getLastName() {
		
		return lastName;
		
	}

	public void setLastName(String lastName) {
		
		this.lastName = lastName;
		
	}

	public String getUserName() {
		
		return userName;
		
	}

	public void setUserName(String userName) {
		
		this.userName = userName;
		
	}

	public String getPassword() {
		
		return password;
		
	}

	public void setPassword(String password) {
		
		this.password = password;
		
	}

	public Address getAddress() {
		
		return address;
		
	}

	public void setAddress(Address address) {
		
		this.address = address;
		
	}

	public String getPhoneNumber() {
		
		return phoneNumber;
		
	}

	public void setPhoneNumber(String phoneNumber) {
		
		this.phoneNumber = phoneNumber;
		
	}

	public String getEmailAddress() {
		
		return emailAddress;
		
	}

	public void setEmailAddress(String emailAddress) {
		
		this.emailAddress = emailAddress;
		
	}
	
	public int getAccountNumber() {
		
		return accountNumber;
		
	}
	
	public Double getAccountBalance() {
		
		return accountBalance;
		
	}
	
	public void setAccountBalance(double accountBalance) {
		
		this.accountBalance = accountBalance;
		
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
		
		if (address == null) {
			
			if (other.address != null)
				return false;
			
		} else if (!address.equals(other.address))
			return false;
		
		if (emailAddress == null) {
			
			if (other.emailAddress != null)
				return false;
			
		} else if (!emailAddress.equals(other.emailAddress))
			return false;
		
		if (firstName == null) {
			
			if (other.firstName != null)
				return false;
			
		} else if (!firstName.equals(other.firstName))
			return false;
		
		if (lastName == null) {
			
			if (other.lastName != null)
				return false;
			
		} else if (!lastName.equals(other.lastName))
			return false;
		
		if (password == null) {
			
			if (other.password != null)
				return false;
			
		} else if (!password.equals(other.password))
			return false;
		
		if (phoneNumber == null) {
			
			if (other.phoneNumber != null)
				return false;
			
		} else if (!phoneNumber.equals(other.phoneNumber))
			return false;
		
		if (userName == null) {
			
			if (other.userName != null)
				return false;
			
		} else if (!userName.equals(other.userName))
			return false;
		
		return true;
		
	}

	@Override
	public String toString() {
		
		return firstName + " " + lastName + "<br>Username: " + userName + "<br>" + address.toString() + "<br>Phone Number: " + phoneNumber + "<br>Email Address: " + emailAddress + "<br>Account Number: " + accountNumber;
		
	}
	
}
