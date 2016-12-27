package com.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Cart;
import com.services.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{
	@Autowired
private SessionFactory sessionFactory;
	@Autowired
	private CustomerOrderService customerOrderService;
	
	public SessionFactory getSessionFactory() {
	return sessionFactory;
}
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
@Transactional
public Cart getCartByCartId(int cartId) {
		Session session=sessionFactory.openSession();
		Cart cart=(Cart)session.get(Cart.class, cartId);
		System.out.println(cart.getCartId() + " " + cart.getCartItem());
		session.close();
		return cart;
}

@Transactional
public Cart validate(int cartId) throws IOException {
	// TODO Auto-generated method stub
	Cart cart = getCartByCartId(cartId);
    if(cart == null || cart.getCartItem().size() == 0){
        throw new IOException(cartId + "");
    }
    update(cart);
    return cart;
}

@Transactional
public void update(Cart cart) {
	// TODO Auto-generated method stub
	int cartId = cart.getCartId();
    double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
    cart.setTotalPrice(grandTotal);
    Session session = sessionFactory.openSession();
    session.saveOrUpdate(cart);
    //session.flush();
    session.close();
	
}
}
