package com.user;

public class Address {
	
	private String street;
	private String city;
	private String state;
	private String zipCode;
	
	public Address() {
		
		super();
		
	}

	public Address(String street, String city, String state, String zipCode) {
		
		super();
		
		this.street = street;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
		
	}

	public String getStreet() {
		
		return street;
		
	}

	public void setStreet(String street) {
		
		this.street = street;
		
	}

	public String getCity() {
		
		return city;
		
	}

	public void setCity(String city) {
		
		this.city = city;
		
	}

	public String getState() {
		
		return state;
		
	}

	public void setState(String state) {
		
		this.state = state;
		
	}

	public String getZipCode() {
		
		return zipCode;
		
	}

	public void setZipCode(String zipCode) {
		
		this.zipCode = zipCode;
		
	}

	@Override
	public boolean equals(Object obj) {
		
		if (this == obj)
			return true;
		
		if (obj == null)
			return false;
		
		if (getClass() != obj.getClass())
			return false;
		
		Address other = (Address) obj;
		
		if (city == null) {
			
			if (other.city != null)
				return false;
			
		} else if (!city.equals(other.city))
			return false;
		
		if (state == null) {
			
			if (other.state != null)
				return false;
			
		} else if (!state.equals(other.state))
			return false;
		
		if (street == null) {
			
			if (other.street != null)
				return false;
			
		} else if (!street.equals(other.street))
			return false;
		
		if (zipCode == null) {
			
			if (other.zipCode != null)
				return false;
			
		} else if (!zipCode.equals(other.zipCode))
			return false;
		
		return true;
		
	}

	@Override
	public String toString() {
		
		return street + ", " + city + ", " + state + ", " + zipCode;
		
	}
	
}