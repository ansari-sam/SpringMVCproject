package com.springMVCProject.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.springMVCProject.Entities.Customer;
import com.springMVCProject.Entities.Product;
import com.springMVCProject.Service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		
		return "contact";
	}
	
	
	@RequestMapping("/home")
	public String home(Model m) {
		
		List<Product> product = this.productService.fetchAllProduct();
		m.addAttribute("products", product);
		return "home";
	}
	
	@RequestMapping("/addproduct")
	public String addProduct(HttpSession session) {
		Object customer =session.getAttribute("current-customer");
		if(customer!=null) {
			return "addproduct";
		}
		return "redirect:/login";
	}
	
	@RequestMapping(path="/saveProduct",method = RequestMethod.POST)
	public RedirectView saveProduct(@ModelAttribute("product") Product product,BindingResult result,HttpServletRequest request) {
		
		RedirectView view=new RedirectView();
		if(result.hasErrors()) {
			view.setUrl("/addproduct");
		}else {
			
			this.productService.createProduct(product);
			view.setUrl(request.getContextPath()+"/home");
		}
		return view;
	}
	
	@RequestMapping("/delete/{pId}")
	public RedirectView delete(@PathVariable("pId") int pId,HttpServletRequest request) {
		RedirectView view=new RedirectView();
		if(!(pId==0)) {
			this.productService.delete(pId);
			view.setUrl(request.getContextPath()+"/home");
		}
		return view;
		
	}
	
	@RequestMapping("/edit/{pId}")
	public String edit(@PathVariable("pId") int pId,Model m) {
		if(!(pId==0)) {
			Product singleProduct = this.productService.getSingleProduct(pId);
			m.addAttribute("product", singleProduct);
		}
		
		return "edit";
	}
	
	@RequestMapping(path="/update",method = RequestMethod.POST)
	public RedirectView update(@ModelAttribute("product") Product product,HttpServletRequest request) {
		RedirectView view=new RedirectView();
		this.productService.update(product);
		view.setUrl(request.getContextPath()+"/home");
		return view;
		
	}
}
