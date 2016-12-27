package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Cart;
import com.model.Customer;
import com.services.CartServiceImpl;
import com.services.CustomerServices;

@Controller
public class CartController {
@Autowired
private CustomerServices customerServices;
@Autowired
private CartServiceImpl cartService;

public CartServiceImpl getCartService() {
	return cartService;
}

public void setCartService(CartServiceImpl cartService) {
	this.cartService = cartService;
}

public CustomerServices getCustomerServices() {
		return customerServices;
	}

	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}

@RequestMapping("/cart/getCartId")
public String getCartId(Model model){
	User user=(User)SecurityContextHolder
	  .getContext().getAuthentication().getPrincipal();
	String username=user.getUsername();
	Customer customer=customerServices
	  .getCustomerByUsername(username);
	model.addAttribute("cartId",customer.getCart().getCartId());
	return "Cart";
}
@RequestMapping("/cart/getCart/{cartId}")
public @ResponseBody Cart getCartItems(
		@PathVariable(value="cartId") int cartId){
	return cartService.getCartByCartId(cartId);
}

}
