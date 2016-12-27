package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.model.CartItem;
import com.model.Product;
@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Transactional
	public void addCartItem(CartItem cartItem){
		
		System.out.println("hiiii");
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(cartItem);
		session.getTransaction().commit();
		//session.flush();
		session.close();
	}

	public void removeCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		CartItem cartItem=(CartItem)session.get(CartItem.class, cartItemId);
		session.delete(cartItem);
		
		Cart cart=cartItem.getCart();
		List<CartItem> cartItems=cart.getCartItem();
		cartItems.remove(cartItem);
		//session.flush();
		session.getTransaction().commit();
		session.close();
	}

	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		List<CartItem> cartItems=cart.getCartItem();
		for(CartItem cartItem:cartItems){
			removeCartItem(cartItem.getCartItemId());
		}

	}
}