package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Category;
import com.model.Supplier;

@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Supplier> getAllSupplier() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		List<Supplier> supplier=session.createQuery("from Supplier").list();
		session.close();
		return supplier;
	}

	public void addSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(supplier);
		//session.flush();
		session.getTransaction().commit();
		session.close();

	}

	public void deleteSupplier(int SID) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Supplier supplier=(Supplier)session.get(Supplier.class,SID);
		session.delete(supplier);
		//session.flush();
		session.getTransaction().commit();
		session.close();	
	}

	

	public void editSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		//update productapp set ....where id=?
		session.update(supplier);
		//session.flush();
		session.getTransaction().commit();
		session.close();
	}

	public Supplier getSupplierById(int SID) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Supplier supplier=session.get(Supplier.class,SID);
		session.close();
		return supplier;
	}
}
