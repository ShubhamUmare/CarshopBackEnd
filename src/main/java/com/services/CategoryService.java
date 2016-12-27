package com.services;

import java.util.List;

import com.model.Category;
import com.model.Product;

public interface CategoryService {
	List<Category> getAllCategory();
	Category getCategoryById(int Cid);
	void addCategory(Category category);
	void deleteCategory(int Cid);
	void editCategory(Category category);
}
