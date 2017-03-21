package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.perfume.dao.CategoryDao;
import com.perfume.model.Category;
@Repository
public class CategoryDaoImpl implements CategoryDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}

	@SuppressWarnings("unchecked")
	public List<Category> listCategorys() {
		// TODO Auto-generated method stub
		List<Category> CategoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return CategoryList;

	}

	@SuppressWarnings("unchecked")
	public Category getCategoryById(int categoryId) {
		String hql = "from Category where categoryId="+categoryId;
		List<Category> clist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return clist.get(0);

	}

	public void deleteCategory(int categoryId) {
		// TODO Auto-generated method stub
		Category c=new Category();
		c.setCategoryId(categoryId);
		sessionFactory.getCurrentSession().delete(c);
		
	}

	@SuppressWarnings("unchecked")
	public Category getCategoryByName(String category) {
		// TODO Auto-generated method stub
		List<Category> clist = sessionFactory.getCurrentSession().createQuery("from Category where categoryName = " + "'"+category+"'").getResultList();
		return clist.get(0);

	}

	@SuppressWarnings("unchecked")
	public String listCategorysByJson() {
		// TODO Auto-generated method stub
		List<Category> CategoryList = sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(CategoryList);
		return list;
	}

}
