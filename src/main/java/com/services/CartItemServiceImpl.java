package com.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartItemDao;
import com.model.Cart;
import com.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService{
	@Autowired
private CartItemDao cartItemDao;

	public CartItemDao getCartItemDao() {
		return cartItemDao;
	}

	public void setCartItemDao(CartItemDao cartItemDao) {
		this.cartItemDao = cartItemDao;
	}

	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
	}

	public Cart getCartByCartId() {
		// TODO Auto-generated method stub
		return null;
	}

	public void removeCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		cartItemDao.removeCartItem(cartItemId);
	}

	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		cartItemDao.removeAllCartItems(cart);	
	}
	
		
	}

