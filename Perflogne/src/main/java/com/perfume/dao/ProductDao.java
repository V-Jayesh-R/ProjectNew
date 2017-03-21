package com.perfume.dao;

import java.util.List;

import com.perfume.model.Product;

public interface ProductDao {
	
	public void addProduct(Product product);
	public List<Product> listProducts();
	public Product getProductyById(int productId);
	public void removeProduct(int productId);
	public Product getProductyByName(String product);
	public String listProductsByJson();
}
