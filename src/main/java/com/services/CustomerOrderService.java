package com.services;

import com.model.CustomerOrder;

public interface CustomerOrderService {
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
