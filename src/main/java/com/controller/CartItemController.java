package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.model.Cart;
import com.model.CartItem;
import com.model.Customer;
import com.model.Product;
import com.services.CartItemService;
import com.services.CartService;
import com.services.CartServiceImpl;
import com.services.CustomerServices;
import com.services.ProductService;

@Controller
public class CartItemController {
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private CustomerServices customerServices;
	@Autowired
	private ProductService productservice;
	@Autowired
	private CartServiceImpl cartservice;
	public CartServiceImpl getCartservice() {
		return cartservice;
	}
	public void setCartservice(CartServiceImpl cartservice) {
		this.cartservice = cartservice;
	}
	public CartItemService getCartItemService() {
		return cartItemService;
	}
	public void setCartItemService(CartItemService cartItemService) {
		this.cartItemService = cartItemService;
	}
	public CustomerServices getCustomerServices() {
		return customerServices;
	}
	public void setCustomerServices(CustomerServices customerServices) {
		this.customerServices = customerServices;
	}
	public ProductService getProductservice() {
		return productservice;
	}
	public void setProductservice(ProductService productservice) {
		this.productservice = productservice;
	}

	@RequestMapping("/cart/add/{ID}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void addCartItem(@PathVariable(value="ID") int ID){
		  //Is to get the username of the customer
		//User object contains details about the user -username , password, activeuser or not
		
		User user=(User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username=user.getUsername();
		Customer customer=customerServices.getCustomerByUsername(username);
		System.out.println("Customer is " + customer.getCustomerEmail() );
		Cart cart=customer.getCart();
		
		List<CartItem> cartItems=cart.getCartItem();
		Product product=productservice.getProductById(ID);
		for(int i=0;i<cartItems.size();i++){
			CartItem cartItem=cartItems.get(i);
			if(product.getID()==cartItem.getProduct().getID()){
				cartItem.setQuantity(cartItem.getQuantity() + 1);
				cartItem.setTotalprice(cartItem.getQuantity() * cartItem.getProduct().getPrice());
					cartItemService.addCartItem(cartItem);
					
				return;
			}
		}
			
		
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(1);
		cartItem.setProduct(product);
		cartItem.setTotalprice(product.getPrice() * 1);
		cartItem.setCart(cart);
		cartItemService.addCartItem(cartItem);
		
		

}	
	
	@RequestMapping("/cart/removecartitem/{cartItemId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeCartItem(@PathVariable(value="cartItemId") int cartItemId){
		cartItemService.removeCartItem(cartItemId);
	}

	@RequestMapping("/cart/removeAllItems/{cartId}")
	@ResponseStatus(value=HttpStatus.NO_CONTENT)
	public void removeAllCartItems(@PathVariable(value="cartId") int cartId){
		Cart cart=cartservice.getCartByCartId(cartId);
		cartItemService.removeAllCartItems(cart);
	}
	
}
