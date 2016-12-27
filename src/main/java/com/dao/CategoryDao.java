package com.dao;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface CategoryDao {
	List<Category> getAllCategory();
	Category getCategoryById(int Cid);
	void addCategory(Category category);
	void deleteCategory(int Cid);
	void editCategory(Category category);

}
