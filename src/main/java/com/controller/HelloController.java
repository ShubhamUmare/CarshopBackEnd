package com.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.Category;
import com.model.Product;
import com.model.Supplier;
import com.services.CategoryService;
import com.services.ProductService;
import com.services.SupplierService;

@Controller

public class HelloController {
	@Autowired
	
	private ProductService productservice;
	
	@Autowired
	private CategoryService categoryservice;
	
	@Autowired
	private SupplierService supplierservice;
	
	
	public CategoryService getCategoryservice() {
		return categoryservice;
	}


	public void setCategoryservice(CategoryService categoryservice) {
		this.categoryservice = categoryservice;
	}


	public SupplierService getSupplierservice() {
		return supplierservice;
	}


	public void setSupplierservice(SupplierService supplierservice) {
		this.supplierservice = supplierservice;
	}


	public void setProductservice(ProductService productservice) {
		this.productservice = productservice;
	}


	public ProductService getProductservice() {
		return productservice;
	}
	


	@RequestMapping("/")
	public ModelAndView helloWorld(){
		 ModelAndView model=new ModelAndView("home");
		return model;
	}
	
	@RequestMapping("/getAllProducts")
	public ModelAndView getAllProducts() {
		List<Product> products=productservice.getAllProducts();
		return new ModelAndView("ProductList","products",products);
	}

	@RequestMapping("/getProductById/{id}")
	public ModelAndView getProductById(@PathVariable(value="id")int id){
		Product p=productservice.getProductById(id);
		return new ModelAndView("productpage","productobj",p);
	}
	
	@RequestMapping("/admin/delete/{id}")
	public String deleteProduct(@PathVariable(value="id") int id){
		Path path= (Path) Paths.get("C:/Users/shubham/workspace/Demo/src/main/webapp/WEB-INF/resources/images/" + id + ".png");
		if(Files.exists(path))
				{
			           try {
						Files.delete( path);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}

		productservice.deleteProduct(id);
		
		return "redirect:/productsListAnguler";
	}

	@RequestMapping(value="/admin/product/addProduct",method=RequestMethod.GET)
	public String getProductForm(Model model){
		Product product=new Product();
		Category category=new Category();
		category.setCid(1);//New Arrivals
		//set the category as 1 for the Product product
		product.setCategory(category);
		
		Supplier supplier=new Supplier();
		supplier.setSID(1);//Shubz
		product.setSupplier(supplier);
		
		model.addAttribute("productFormObj",product);
		return "productForm";
	}
	
	@RequestMapping(value="/admin/product/addProduct",method=RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute(value="productFormObj") Product product,BindingResult result){
		if(result.hasErrors())
			return "productForm";

		productservice.addProduct(product);
		
	
		MultipartFile image=product.getProductImage();
		if(image!=null && !image.isEmpty()){
		Path path=(Path) Paths.get("C:/Users/shubham/workspace/Demo/src/main/webapp/WEB-INF/resources/images/" + product.getID() + ".png");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}

		return "redirect:/productsListAnguler";
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
	return "redirect:/productsListAnguler";

	}
	@RequestMapping("/getProductsList")
	public @ResponseBody List<Product> getProductsListInJSON(){
		return productservice.getAllProducts();
	}
	
	  @RequestMapping("/productsListAnguler")
	public String getProducts(){
		return "productsListAnguler";
	}
	  @RequestMapping("/admin/Product")
		public String Product(){
			return "Product";
		}
	  
	  @RequestMapping("/categoryList")
		public String getcategory(){
			return "categoryList";
		}

	  @RequestMapping("/admin/Category")
		public String Category(){
			return "Category";
		}
	  @RequestMapping(value="/admin/category/addCategory", method=RequestMethod.GET)
		public String getCategoryForm(Model model)
		{
			
			Product product=new Product();
			Category category=new Category();
			category.setCid(1);
			product.setCategory(category);
			model.addAttribute("categoryFormObj", category);
			return "categoryForm";	
		}
		
		
		@RequestMapping(value="/admin/category/addCategory", method=RequestMethod.POST)
		public String addCategory(@Valid@ModelAttribute(value="categoryFormObj") Category category,BindingResult result)
		{
			if(result.hasErrors())
				return "categoryForm";
			categoryservice.addCategory(category);
			return "redirect:/getAllCategories";	
		}
		
		
		@RequestMapping("/getAllCategories")
		public ModelAndView getAllCategoires(){
			 List<Category> category=categoryservice.getAllCategory();
			return new ModelAndView("categoryList","category",category);
			
		}
		
		@RequestMapping(value="/admin/category/delete/{Cid}")
		public String deleteCategory(@PathVariable(value="Cid") int Cid){
			categoryservice.deleteCategory(Cid);
			return "redirect:/getAllCategories";
		}
		
		@RequestMapping(value="/admin/category/editCategory/{Cid}")
		public ModelAndView getEditForm1(@PathVariable(value="Cid") int Cid){
			
			Category category=this.categoryservice.getCategoryById(Cid);
			return new ModelAndView("editCategoryForm","editCategoryObj",category);
		}
		
		
		@RequestMapping(value="/admin/category/editCategory",method=RequestMethod.POST)
		public String editCategory(@ModelAttribute(value="editCategoryObj") Category category)
		{
		categoryservice.editCategory(category);
		return "redirect:/getAllCategories";

		}

		@RequestMapping("/getAllSuppliers")
		public ModelAndView getAllSuppliers(){
			 List<Supplier> supplier=supplierservice.getAllSupplier();
			return new ModelAndView("supplierList","supplier",supplier);
			
		}
		
		 @RequestMapping("/admin/Supplier")
			public String Supplier(){
				return "Supplier";
			}
		
		
		 @RequestMapping("/supplierList")
			public String getsupplier(){
				return "supplierList";
			}

		@RequestMapping(value="/admin/supplier/addSupplier", method=RequestMethod.GET)
		public String getSupplierForm(Model model)
		{
			
			Product product=new Product();
			Supplier supplier=new Supplier();
			supplier.setSID(1);
			product.setSupplier(supplier);
			model.addAttribute("supplierFormObj", supplier);
			return "supplierForm";	
		}
		
		

		@RequestMapping(value="/admin/supplier/addSupplier", method=RequestMethod.POST)
		public String addSupplier(@Valid@ModelAttribute(value="supplierFormObj") Supplier supplier, BindingResult result)
		{
			if(result.hasErrors())
				return "supplierForm";
			supplierservice.addSupplier(supplier);
			return "redirect:/getAllSuppliers";	
		}
		
		@RequestMapping(value="/admin/supplier/delete/{SID}")
		public String deleteSupplier(@PathVariable(value="SID") int SID){
			supplierservice.deleteSupplier(SID);
			return "redirect:/getAllSuppliers";
		}

		@RequestMapping(value="/admin/supplier/editSupplier/{SID}")
		public ModelAndView getEditForm11(@PathVariable(value="SID")int SID){
			
			Supplier supplier=this.supplierservice.getSupplierById(SID);
			return new ModelAndView("editSupplierForm","editSupplierObj",supplier);
		}
		
		
		@RequestMapping(value="/admin/supplier/editSupplier",method=RequestMethod.POST)
		public String editSupplier(@ModelAttribute(value="editSupplierObj") Supplier supplier)
		{
		supplierservice.editSupplier(supplier);
		return "redirect:/getAllSuppliers";

		}
}
