package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CustomerDao;
import com.model.Customer;
@Service
public class CustomerServiceImpl implements CustomerServices {
	@Autowired
	private CustomerDao customerDao;


	public CustomerDao getCustomerDao() {
		return customerDao;
	}


	public void setCustomerDao(CustomerDao customerDao) {
		this.customerDao = customerDao;
	}

	@Transactional
	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.addCustomer(customer);

	}


	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return customerDao.getAllCustomers();
	}

	@Transactional
	public Customer getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
		 return customerDao.getCustomerByUsername(username);

	}
	

}
