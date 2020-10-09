package com.springMVCProject.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMVCProject.Dao.CustomerDao;
import com.springMVCProject.Entities.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerDao customerDao;
	
	public int createCustomer(Customer customer) {
	
		return this.customerDao.saveCustomer(customer);
	}
	
	public List<Customer> getCustomerByEmailAndPassword(String email,String password){
		
		return this.customerDao.getCustomer(email, password);
	}

}
