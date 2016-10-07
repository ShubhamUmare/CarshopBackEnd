package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDao {
List <Product> getAllProduct();
Product getProductById(int id);
void deleteProduct(int id);
void addProduct(Product product);
void editProduct(Product product);
}
