package com.services;

import java.util.List;

import com.model.Category;
import com.model.Supplier;

public interface SupplierService {
	List<Supplier> getAllSupplier();
	Supplier getSupplierById(int SID);
	void addSupplier(Supplier supplier);
	void deleteSupplier(int SID);
	void editSupplier(Supplier supplier);
}
