package com.jfsd.service;

import java.util.List;

import com.jfsd.model.Farmer;
import com.jfsd.model.Product;

public interface FarmerService {
	public Farmer checkFarmerLogin(int id,String password);

	public List<Farmer> getAllFarmers();
	public String deleteFarmer(int id);
	public String addProduct(Product product);
	public List<Product> viewAllProducts();
	

	public Product displayProductById(int id);

	public String updateProductDetails(int id, double price, String quantity);

	String updateProductDetails(int id, double price, Long quantity);


}
