package com.springMVCProject.Dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.springMVCProject.Entities.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveProduct(Product product) {
		Integer i = (Integer)this.hibernateTemplate.save(product);
		
		return i;
	}
	
	public List<Product> getAllProduct(){
		List<Product> all = this.hibernateTemplate.loadAll(Product.class);
		return all;
	}
	
	@Transactional
	public void deleteProduct(int pId) {
		Product product = this.hibernateTemplate.get(Product.class, pId);
		this.hibernateTemplate.delete(product);
	}
	
	@Transactional
	public void updateProduct(Product product) {
		this.hibernateTemplate.update(product);
	}
	
	public Product singleProduct(int pId) {
		Product product = this.hibernateTemplate.get(Product.class, pId);
		return product;
	}

}
