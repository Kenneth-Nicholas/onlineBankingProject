package com.user;

import java.util.ArrayList;

public class Customer {
	
	private String firstName;
	private String lastName;
	private String userName;
	private String password;
	private Address address;
	private String phoneNumber;
	private String emailAddress;
	private ArrayList<Account> accounts= new ArrayList<Account>();
	
	public Customer() {
		
		super();
		
	}

	public Customer(String firstName, String lastName, String userName, String password, Address address, String phoneNumber, String emailAddress, ArrayList<Account> accounts) {
		
		super();
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.userName = userName;
		this.password = password;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.emailAddress = emailAddress;
		this.accounts = accounts;
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

	public ArrayList<Account> getAccounts() {
		
		return accounts;
		
	}

	public void setAccounts(ArrayList<Account> accounts) {
		
		this.accounts = accounts;
		
	}

	@Override
	public boolean equals(Object obj) {
		
		if (this == obj)
			return true;
		
		if (obj == null)
			return false;
		
		if (getClass() != obj.getClass())
			return false;
		
		Customer other = (Customer) obj;
		
		if (accounts == null) {
			
			if (other.accounts != null)
				return false;
			
		} else if (!accounts.equals(other.accounts))
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
		
		return firstName + " " + lastName + "<br>Username: " + userName + "<br>" + address.toString() + "<br>Phone Number: " + phoneNumber + "<br>Email Address: " + emailAddress;
		
	}

}
