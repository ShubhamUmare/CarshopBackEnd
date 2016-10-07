package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Product;
@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDao productDao;
	public ProductDao getProductDao(){
		return productDao;
		
	}
	public void setProductDao(ProductDao productDao)
	{
		this.productDao=productDao;
	}
	@Transactional
	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return productDao.getAllProduct();
	}
	
	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return productDao.getProductById(id);
	}
	@Transactional
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		productDao.deleteProduct(id);
	}
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		productDao.addProduct(product);

	}
	public void editProduct(Product product) {
		// TODO Auto-generated method stub
		productDao.editProduct(product);
	}
	
}
