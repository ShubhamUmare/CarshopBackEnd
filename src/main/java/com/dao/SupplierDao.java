package com.dao;

import java.util.List;

import com.model.Product;
import com.model.Supplier;

public interface SupplierDao {
	List<Supplier> getAllSupplier();
	Supplier getSupplierById(int SID);
	void addSupplier(Supplier supplier);
	void deleteSupplier(int SID);
	void editSupplier(Supplier supplier);
	
}
