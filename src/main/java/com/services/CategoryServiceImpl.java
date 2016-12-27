package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CategoryDao;
import com.model.Category;
@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;
	

	public CategoryDao getCategoryDao() {
		return categoryDao;
	}

	public void setCategoryDao(CategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	public List<Category> getAllCategory() {
		// TODO Auto-generated method stub
		return categoryDao.getAllCategory();
	}

	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		categoryDao.addCategory(category);

	}

	public void deleteCategory(int Cid) {
		// TODO Auto-generated method stub
		categoryDao.deleteCategory(Cid);
	}

	public void editCategory(Category category) {
		// TODO Auto-generated method stub
		categoryDao.editCategory(category);
	}

	public Category getCategoryById(int Cid) {
		// TODO Auto-generated method stub
		return categoryDao.getCategoryById(Cid);
	}

}
