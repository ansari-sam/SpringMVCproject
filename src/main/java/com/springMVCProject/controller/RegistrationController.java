package com.springMVCProject.controller;
import com.springMVCProject.Entities.Customer;
import com.springMVCProject.Service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping("/registration")
	public String register() {
		
		return "registration";
	}
	
	@RequestMapping(path="/processRegForm",method = RequestMethod.POST)
	public String processForm(@ModelAttribute("customer") Customer customer,BindingResult result,Model m) {
		if(result.hasErrors()) {
			return "registration";
		}else {
			this.customerService.createCustomer(customer);
		}
		String msg="successfully registered, Thank you!!";
		m.addAttribute("msg", msg);
		return "login";
	}

}
