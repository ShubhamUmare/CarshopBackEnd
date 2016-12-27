package com.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="productapp")
public class Product implements Serializable {
	@Id 
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int ID;
	@NotEmpty(message="Name is Mandatory")
	private String Name;
	@Min(value=50000,message="Minimum value should be greater than 50000")
	private double Price;
	
	@ManyToOne
	@JoinColumn(name="Cid")
	private Category category;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="SID")
	private Supplier supplier;
	@Transient
	private MultipartFile productImage;

	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public MultipartFile getProductImage() {
		return productImage;
	}
	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	

}
