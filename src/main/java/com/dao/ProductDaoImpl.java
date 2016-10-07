package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	
	@Autowired
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory(){
		return sessionFactory;
	}
	
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory=sessionFactory;
	}
	
	public List<Product> getAllProduct() {
		// TODO Auto-generated method stub
		Session session=(Session) sessionFactory.openSession();
		
		//Selecting all records from the table
		List<Product> products= session.createQuery("from Product").list();
		session.close();// close the session.
		
		
		return products;

	}
	
	public Product getProductById(int id){
		
		Session session=sessionFactory.openSession();
		Product product=session.get(Product.class,id);
		session.close();
		return product;
		
	}

	@Transactional
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Product product=(Product)session.get(Product.class,id);
		session.delete(product);
		//session.flush();
		session.getTransaction().commit();
		session.close();
		
		
	}


	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		session.close();	

	}
	@Transactional
	public void editProduct(Product product) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		//update productapp set ....where id=?
		session.update(product);
		//session.flush();
		session.getTransaction().commit();
		session.close();
}

}
