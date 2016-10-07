package com.services;
import java.util.List;

import com.model.Product;

public interface ProductService {
List <Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(int id);
void addProduct(Product product);
void editProduct(Product product);
}
