package com.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Farmer;
import com.jfsd.model.Product;
import com.jfsd.repository.FarmerRepository;
import com.jfsd.repository.ProductRepository;
@Service
public class FarmerImpl implements FarmerService {
	@Autowired
	private FarmerRepository farmerRepository;
	@Autowired
	private ProductRepository productRepository;
	@Override
	public Farmer checkFarmerLogin(int id, String password) {
	
		return farmerRepository.checkFarmerLogin(id, password);
	}

	@Override
	public List<Farmer> getAllFarmers() {
		 return farmerRepository.findAll();
	}


	@Override
	public String deleteFarmer(int id) {
		farmerRepository.deleteById(id);
		return "Farmer Deleted Sucessfully";
	}

	@Override
	public String addProduct(Product product) {
		productRepository.save(product);
		return "added";
		
	}

	@Override
	public List<Product> viewAllProducts() {
	
		return productRepository.findAll();
	}

	

	@Override
	public Product displayProductById(int id) {
		
		return null;
	}
	@Override
	public String updateProductDetails(int id, double price, Long quantity) {
	    try {
	        Product product = productRepository.findById((long) id).orElseThrow(() -> new RuntimeException("Product not found"));
	        product.setPrice(price);
	        product.setQuantity(quantity);
	        productRepository.save(product); 
	        return "Product updated successfully!";
	    } catch (Exception e) {
	        return "Error updating product: " + e.getMessage();
	    }
	}

	@Override
	public String updateProductDetails(int id, double price, String quantity) {
		
		return null;
	}



	
	


	
		
	}

	
		
	

	

