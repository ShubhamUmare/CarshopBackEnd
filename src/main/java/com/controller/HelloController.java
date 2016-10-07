package com.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Category;
import com.model.Product;
import com.services.ProductService;

@Controller

public class HelloController {
	@Autowired
	
	private ProductService productservice;
	
	
	public void setProductservice(ProductService productservice) {
		this.productservice = productservice;
	}


	public ProductService getProductservice() {
		return productservice;
	}
	


	
	/*public ModelAndView helloWorld(){
		 ModelAndView model=new ModelAndView("index.jsp");
		return model;
		
	}*/
	@RequestMapping("/")
	public ModelAndView getAllProducts() {
		List<Product> products=productservice.getAllProducts();
		return new ModelAndView("ProductList","products",products);
	}
	
	@RequestMapping("/getProductById/{id}")
	public ModelAndView getProductById(@PathVariable(value="id")int id){
		Product p=productservice.getProductById(id);
		return new ModelAndView("productpage","productobj",p);
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteProduct(@PathVariable(value="id") int id){
		productservice.deleteProduct(id);
		
		return "redirect:/";
	}

	@RequestMapping(value="/admin/product/addProduct",method=RequestMethod.GET)
	public String getProductForm(Model model){
		Product product=new Product();
		Category category=new Category();
		category.setCid(1);//New Arrivals
		//set the category as 1 for the Book book
		product.setCategory(category);
		model.addAttribute("productFormObj",product);
		return "productForm";
	}
	
	@RequestMapping(value="/admin/product/addProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute(value="productFormObj") Product product){
		
		productservice.addProduct(product);
		return "redirect:/";
	}
	
	@RequestMapping(value="/admin/product/editProduct/{id}")
	public ModelAndView getEditForm(@PathVariable(value="id")int id){
		
		Product product=this.productservice.getProductById(id);
		return new ModelAndView("editProductForm","editProductObj",product);
	}
	
	
	@RequestMapping(value="/admin/product/editProduct",method=RequestMethod.POST)
	public String editProduct(@ModelAttribute(value="editProductObj") Product product)
	{
	productservice.editProduct(product);
	return "redirect:/";

	}

	
}
