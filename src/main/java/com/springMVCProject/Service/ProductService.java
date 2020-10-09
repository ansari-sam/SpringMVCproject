package com.springMVCProject.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springMVCProject.Dao.ProductDao;
import com.springMVCProject.Entities.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	public int createProduct(Product product) {
		
		return this.productDao.saveProduct(product);
	}
	
	public List<Product> fetchAllProduct(){
		
		return this.productDao.getAllProduct();
	}
	
	public void delete(int pId) {
		this.productDao.deleteProduct(pId);
	}
	
	public void update(Product product) {
		this.productDao.updateProduct(product);
	}
	
	public Product getSingleProduct(int pId) {
		
		return this.productDao.singleProduct(pId);
	}
}
