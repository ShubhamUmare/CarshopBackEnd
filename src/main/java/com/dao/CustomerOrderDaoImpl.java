package com.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.CustomerOrder;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {


	@Autowired
    private SessionFactory sessionFactory;
		
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
	        Session session = sessionFactory.openSession();
	        session.beginTransaction();
	        session.saveOrUpdate(customerOrder);
	        //session.flush();
	        session.getTransaction().commit();
	        session.close();
	    }
		
	}

	


