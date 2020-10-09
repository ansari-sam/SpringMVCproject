package com.springMVCProject.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springMVCProject.Entities.Customer;

@Repository
public class CustomerDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveCustomer(Customer customer) {

		Integer i = (Integer) this.hibernateTemplate.save(customer);

		return i;
	}

	public List<Customer> getCustomer(String customerEmail, String password) {
		
		String query="from Customer where customerEmail=:e and password=:p";
		String paramNames[]= {"e","p"};
		Object values[]= {customerEmail,password};
		
		List<Customer> list = (List<Customer>) this.hibernateTemplate.findByNamedParam(query, paramNames, values);

		return list;
	}

}
