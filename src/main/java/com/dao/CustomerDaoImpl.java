package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Authorities;
import com.model.Customer;
import com.model.Users;
@Repository
public class CustomerDaoImpl implements CustomerDao{
@Autowired
private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
	return sessionFactory;
}

public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
@Transactional
	public void addCustomer(Customer customer) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Authorities authorities=new Authorities();
		authorities.setUsername(customer.getUsers().getUsername());
		authorities.setAuthorities("ROLE_USER");
		Users users=customer.getUsers();
		users.setEnabled(true);
		session.save(customer);
		session.save(authorities);
		//session.flush();
		session.getTransaction().commit();
        session.close();
	}

}

