package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.ProductDaoImpl;
import com.perfume.model.Product;
@Service
@Transactional
public class ProductServiceImpl {
	@Autowired
	ProductDaoImpl productDaoImpl;

	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		productDaoImpl.addProduct(product);
	}

	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		return productDaoImpl.listProducts();
	}

	public Product getProductyById(int productId) {
		// TODO Auto-generated method stub
		return productDaoImpl.getProductyById(productId);
	}

	public void removeProduct(int productId) {
		// TODO Auto-generated method stub
		productDaoImpl.removeProduct(productId);
	}

	public Product getProductyByName(String product) {
		// TODO Auto-generated method stub
		return productDaoImpl.getProductyByName(product);
	}
	
	public String listProductsByJson()
	{
		return productDaoImpl.listProductsByJson();
	}

}
