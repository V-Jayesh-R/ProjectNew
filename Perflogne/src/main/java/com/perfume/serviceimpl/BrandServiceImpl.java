package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.BrandDaoImpl;
import com.perfume.model.Brand;

@Service
@Transactional
public class BrandServiceImpl {
	@Autowired
	BrandDaoImpl brandDaoImpl;
	
	public void addBrand(Brand brand)
	{
		brandDaoImpl.addBrand(brand);
	}
	public List<Brand> listBrands()
	{
		return brandDaoImpl.listBrands();
		
	}
	public Brand getBrandById(int brandId)
	{
		return brandDaoImpl.getBrandById(brandId);
		
	}
	public void deleteBrand(int brandId)
	{
		
		brandDaoImpl.deleteBrand(brandId);
	}
	public Brand getBrandByName(String brand)
	{
		
		return brandDaoImpl.getBrandByName(brand);
	}
	public String listBrandsByJson() {
		return brandDaoImpl.listBrandsByJson();
	}


}
