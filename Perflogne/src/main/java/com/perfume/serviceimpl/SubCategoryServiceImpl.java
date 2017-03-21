package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.SubCategoryDaoImpl;
import com.perfume.model.SubCategory;

@Service
@Transactional
public class SubCategoryServiceImpl {
	@Autowired
	SubCategoryDaoImpl subCategoryDaoImpl;
	
	public void addSubCategory(SubCategory subCategory)
	{
		
		subCategoryDaoImpl.addSubCategory(subCategory);
	}
	public List<SubCategory> listSubCategorys()
	{
		return subCategoryDaoImpl.listSubCategorys();
	}
	public SubCategory getSubCategoryById(int subCategoryId)
	{
		return subCategoryDaoImpl.getSubCategoryById(subCategoryId);
	}
	public void removeSubCategory(int subCategoryId)
	{
		subCategoryDaoImpl.removeSubCategory(subCategoryId);
	}
	public SubCategory getSubCategoryByName(String subCategory)
	{
		return subCategoryDaoImpl.getSubCategoryByName(subCategory);
	}
	public String listSubCategorysByJson() {
		
		return subCategoryDaoImpl.listSubCategorysByJson();
		
	}

}
