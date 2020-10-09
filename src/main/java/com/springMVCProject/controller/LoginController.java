package com.springMVCProject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springMVCProject.Entities.Customer;
import com.springMVCProject.Entities.HousesAndAppartments;
import com.springMVCProject.Service.CustomerService;
import com.springMVCProject.Service.HousesAndAppartmentsService;

@Controller
public class LoginController {

	@Autowired
	private CustomerService customerService;
	@Autowired
	private HousesAndAppartmentsService houseAndAprtService;

	@RequestMapping("/login")
	public String login() {

		return "login";
	}

	@RequestMapping(path="/mainhome",method = RequestMethod.POST)
	public String MainHome(@RequestParam("customerEmail") String email, @RequestParam("password") String password,
			Model m, HttpSession session) {

		List<Customer> customer = this.customerService.getCustomerByEmailAndPassword(email, password);
		if (customer.isEmpty()) {
			session.setAttribute("msg", "Invalid login email or password");
			return "redirect:/login";
		}else {
			Customer customerN = new Customer();
			for (Customer c : customer) {
				customerN.setCustomerId(c.getCustomerId());
				customerN.setCustomerName(c.getCustomerName());
				customerN.setCustomerEmail(c.getCustomerEmail());
				customerN.setDob(c.getDob());
				customerN.setPassword(c.getPassword());
			}
			session.setAttribute("current-customer", customer);
			m.addAttribute("customer", customerN);
			
			List<HousesAndAppartments> availableHouAndApart = this.houseAndAprtService.getAllAvailableHouAndApart();
			m.addAttribute("availableHouAndApart", availableHouAndApart);
			
			return "mainhome";	
		}
		
	}
	
	@RequestMapping("/logout")
	public String Logout(HttpSession session) {
		session.removeAttribute("current-customer");
		session.setAttribute("msg", "Logout successfully...");
		return "redirect:/login";
	}
	

}
