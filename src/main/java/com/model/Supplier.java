package com.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="supplier")
public class Supplier implements Serializable{
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
private int SID;
@Column(name="supplierName")
private String supplierName;
private String supplierAddress;

@OneToMany(mappedBy="supplier",cascade=CascadeType.ALL)
@JsonIgnore
List<Product> products;
public List<Product> getProducts() {
	return products;
}
public void setProducts(List<Product> products) {
	this.products = products;
}
public int getSID() {
	return SID;
}
public void setSID(int sID) {
	SID = sID;
}
public String getSupplierName() {
	return supplierName;
}
public void setSupplierName(String supplierName) {
	this.supplierName = supplierName;
}
public String getSupplierAddress() {
	return supplierAddress;
}
public void setSupplierAddress(String supplierAddress) {
	this.supplierAddress = supplierAddress;
}



}
