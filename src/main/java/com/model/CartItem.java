package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="cartitem")
public class CartItem {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int cartItemId;
private int quantity;
private double price;
@ManyToOne
@JoinColumn(name="productId")
private Product product;
@ManyToOne
@JoinColumn(name="cartid")
private Cart cart;
public int getCartItemId() {
	return cartItemId;
}
public void setCartItemId(int cartItemId) {
	this.cartItemId = cartItemId;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public Product getProuduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}

}

