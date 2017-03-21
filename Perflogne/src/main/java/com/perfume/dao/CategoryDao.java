package com.perfume.dao;

import java.util.List;

import com.perfume.model.Category;

public interface CategoryDao {
	
	public void addCategory(Category category);
	public List<Category> listCategorys();
	public Category getCategoryById(int categoryId);
	public void deleteCategory(int categoryId);
	public Category getCategoryByName(String category);
	public String listCategorysByJson();

}
