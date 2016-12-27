package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;



@Entity
@Table(name="shippingaddress")
public class ShippingAddress  implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int shippingAddressId;
	
@NotEmpty(message="Street Name cannot be empty")
private String streetName;

@NotEmpty(message="Apartment Name cannot be empty")
private String apartmentNumber;

@NotEmpty(message="City Name cannot be empty")
private String city;

@NotEmpty(message="State Name cannot be empty")
private String state;

@NotEmpty(message="Country Name cannot be empty")
private String country;

@NotEmpty(message="Zipcode cannot be empty")
private String zipcode;

@OneToOne(mappedBy="shippingAddress")
private Customer customer;

public int getShippingAddressId() {
	return shippingAddressId;
}
public void setShippingAddressId(int shippingAddressId) {
	this.shippingAddressId = shippingAddressId;
}
public String getStreetName() {
	return streetName;
}
public void setStreetName(String streetName) {
	this.streetName = streetName;
}
public String getApartmentNumber() {
	return apartmentNumber;
}
public void setApartmentNumber(String apartmentNumber) {
	this.apartmentNumber = apartmentNumber;
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
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getZipcode() {
	return zipcode;
}
public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}
public Customer getCustomer() {
	return customer;
}
public void setCustomer(Customer customer) {
	this.customer = customer;
}

}

