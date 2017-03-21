package com.perfume.dao;

import java.util.List;

import com.perfume.model.Brand;

public interface BrandDao {
	
	public void addBrand(Brand brand);
	public List<Brand> listBrands();
	public Brand getBrandById(int brandId);
	public void deleteBrand(int brandId);
	public Brand getBrandByName(String brand);
	public String listBrandsByJson();

}
