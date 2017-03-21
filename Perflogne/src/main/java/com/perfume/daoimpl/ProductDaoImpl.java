package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.perfume.dao.ProductDao;
import com.perfume.model.Category;
import com.perfume.model.Product;
@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(product);

	}

	@SuppressWarnings("unchecked")
	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		List<Product> pList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return pList;
	}

	@SuppressWarnings("unchecked")
	public Product getProductyById(int productId) {
		// TODO Auto-generated method stub
		String hql = "from Product where productId="+productId;
		List<Product> pList = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return pList.get(0);
	}

	public void removeProduct(int productId) {
		// TODO Auto-generated method stub
		Product p=new Product();
		p.setProductId(productId);
		sessionFactory.getCurrentSession().delete(p);

	}

	@SuppressWarnings("unchecked")
	public Product getProductyByName(String product) {
		// TODO Auto-generated method stub
		List<Product> pList = sessionFactory.getCurrentSession().createQuery("from Product where product = " + "'"+product+"'").getResultList();
		return pList.get(0);
	}

	@SuppressWarnings("unchecked")
	public String listProductsByJson() {
		// TODO Auto-generated method stub
		List<Product> pList = sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(pList);
		return list;
		
	}

}
