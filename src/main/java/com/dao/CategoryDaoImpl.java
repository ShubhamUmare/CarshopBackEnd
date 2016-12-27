package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Category;
import com.model.Product;
@Repository
@Transactional

public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		Session session=(Session) sessionFactory.openSession();
		//Selecting all records from the table
		List<Category> category= session.createQuery("from Category").list();
		session.close();// close the session.
		return category;
	}

	public void addCategory(Category category) {
		// TODO Auto-generated method stub

		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(category);
		//session.flush();
		session.getTransaction().commit();
		session.close();
		
	}

	public void deleteCategory(int Cid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Category category=(Category)session.get(Category.class,Cid);
		session.delete(category);
		//session.flush();
		session.getTransaction().commit();
		session.close();	
	}

	public void editCategory(Category category) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		//update productcategories set ....where id=?
		session.update(category);
		//session.flush();
		session.getTransaction().commit();
		session.close();
	}

	public Category getCategoryById(int Cid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Category category=session.get(Category.class,Cid);
		session.close();
		return category;
	}

}
