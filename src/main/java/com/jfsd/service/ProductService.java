package com.jfsd.service;

import java.util.List;

import com.jfsd.model.Product;

public interface ProductService {
    List<Product> getAllProducts();
    Product saveProduct(Product product);
    Product getProductById(int id);
    String deleteProduct(int id);
    Product findById(Long id);
    void updateProduct(Product product);
    List<Product> getProductsByLocation(String location); // New method
    List<String> getAllLocations(); // New method
}
