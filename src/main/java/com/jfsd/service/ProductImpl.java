package com.jfsd.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Product;
import com.jfsd.repository.ProductRepository;

@Service
public class ProductImpl implements ProductService {
    @Autowired
    private ProductRepository productRepository;

    @Override
    public Product saveProduct(Product product) {
        return productRepository.save(product);
    }

    @Override
    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    @Override
    public Product getProductById(int id) {
        return productRepository.findById((long) id).orElse(null);
    }

    @Override
    public String deleteProduct(int id) {
        productRepository.deleteById((long) id);
        return "Product deleted successfully";
    }

    @Override
    public Product findById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    @Override
    public void updateProduct(Product product) {
        if (product != null && product.getId() != null) {
            Product existingProduct = productRepository.findById(product.getId()).orElseThrow(
                () -> new IllegalArgumentException("Product with ID " + product.getId() + " does not exist."));
            existingProduct.setPrice(product.getPrice());
            existingProduct.setQuantity(product.getQuantity());
            existingProduct.setUnit(product.getUnit());
            productRepository.save(existingProduct);
        } else {
            throw new IllegalArgumentException("Invalid product details.");
        }
    }

    @Override
    public List<Product> getProductsByLocation(String location) {
        return productRepository.findAll().stream()
            .filter(product -> location.equals(product.getLocation()))
            .collect(Collectors.toList());
    }

    @Override
    public List<String> getAllLocations() {
        return productRepository.findAll().stream()
            .map(Product::getLocation)
            .distinct()
            .collect(Collectors.toList());
    }
}
