package com.services;

import com.model.Cart;
import com.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	void removeCartItem(int cartItemId);
	void removeAllCartItems(Cart cart);
	
}
