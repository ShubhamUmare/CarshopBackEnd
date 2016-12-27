package com.dao;

import com.model.Cart;
import com.model.CartItem;

public interface CartItemDao {
	void addCartItem(CartItem cartItem);
	void removeCartItem(int cartItemId);
	void removeAllCartItems(Cart cart);
}
