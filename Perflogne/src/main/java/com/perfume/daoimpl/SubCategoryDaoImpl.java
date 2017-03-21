package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.perfume.dao.SubCategoryDao;
import com.perfume.model.Product;
import com.perfume.model.SubCategory;
@Repository
public class SubCategoryDaoImpl implements SubCategoryDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void addSubCategory(SubCategory subCategory) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(subCategory);

	}

	@SuppressWarnings("unchecked")
	public List<SubCategory> listSubCategorys() {
		// TODO Auto-generated method stub
		List<SubCategory> subCategoryList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		return subCategoryList;
	}

	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryById(int subCategoryId) {
		// TODO Auto-generated method stub
		String hql = "from SubCategory where subCategoryId="+subCategoryId;
		List<SubCategory> clist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return clist.get(0);


	}

	public void removeSubCategory(int subCategoryId) {
		// TODO Auto-generated method stub
		SubCategory sc=new SubCategory();
		sc.setSubCategoryId(subCategoryId);
		sessionFactory.getCurrentSession().delete(sc);
	}

	@SuppressWarnings("unchecked")
	public SubCategory getSubCategoryByName(String subCategory) {
		// TODO Auto-generated method stub
		List<SubCategory> clist = sessionFactory.getCurrentSession().createQuery("from SubCategory where subCategory = " + "'"+subCategory+"'").getResultList();
		return clist.get(0);
	}

	public String listSubCategorysByJson() {
		// TODO Auto-generated method stub
		List<SubCategory> sList = sessionFactory.getCurrentSession().createQuery("from SubCategory").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(sList);
		return list;
	
		
	}

}
