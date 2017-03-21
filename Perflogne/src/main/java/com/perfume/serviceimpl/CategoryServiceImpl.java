
package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.CategoryDaoImpl;
import com.perfume.model.Category;

@Service
@Transactional
	public class CategoryServiceImpl {
	@Autowired
	private CategoryDaoImpl categoryDaoImpl;

	public void addCategory(Category category) {
		// TODO Auto-generated method stub
		categoryDaoImpl.addCategory(category);

	}

	
	public List<Category> listCategorys() {
		// TODO Auto-generated method stub
		return categoryDaoImpl.listCategorys();

	}

		public Category getCategoryById(int categoryId) {
		// TODO Auto-generated method stub
			return categoryDaoImpl.getCategoryById(categoryId);

	}

	
	public void deleteCategory(int categoryId) {
		// TODO Auto-generated method stub
		categoryDaoImpl.deleteCategory(categoryId);

	}

	public Category getCategoryByName(String category) {
		// TODO Auto-generated method stub
		return categoryDaoImpl.getCategoryByName(category);

	}
	
	public String listCategorysByJson(){
		return categoryDaoImpl.listCategorysByJson();
	}
}


