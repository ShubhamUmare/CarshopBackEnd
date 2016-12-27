package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.SupplierDao;
import com.model.Supplier;

@Service
public class SupplierServiceImpl implements SupplierService {
	@Autowired
	private SupplierDao supplierDao;
	
	public SupplierDao getSupplierDao() {
		return supplierDao;
	}

	public void setSupplierDao(SupplierDao supplierDao) {
		this.supplierDao = supplierDao;
	}

	public List<Supplier> getAllSupplier() {
		// TODO Auto-generated method stub
		return supplierDao.getAllSupplier();
	}

	public void addSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		supplierDao.addSupplier(supplier);
	}

	public void deleteSupplier(int SID) {
		// TODO Auto-generated method stub
		supplierDao.deleteSupplier(SID);
	}

	public Supplier getSupplierById(int SID) {
		// TODO Auto-generated method stub
		return supplierDao.getSupplierById(SID);
	}

	public void editSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		supplierDao.editSupplier(supplier);
	}

}
