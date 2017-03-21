package com.perfume.dao;

import java.util.List;

import com.perfume.model.SubCategory;

public interface SubCategoryDao {
	
	public void addSubCategory(SubCategory subCategory);
	public List<SubCategory> listSubCategorys();
	public SubCategory getSubCategoryById(int subCategoryId);
	public void removeSubCategory(int subCategoryId);
	public SubCategory getSubCategoryByName(String subCategory);
	public String listSubCategorysByJson();

}
