package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.perfume.dao.BrandDao;
import com.perfume.model.Brand;
import com.perfume.model.Category;
@Repository
public class BrandDaoImpl implements BrandDao {
	
	@Autowired
	SessionFactory sessionFactory;

	public void addBrand(Brand brand) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(brand);

	}

	@SuppressWarnings("unchecked")
	public List<Brand> listBrands() {
		// TODO Auto-generated method stub
		List<Brand> BrandList = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		return BrandList;
	}

	@SuppressWarnings("unchecked")
	public Brand getBrandById(int brandId) {
		// TODO Auto-generated method stub
		String hql = "from Brand where brandId="+brandId;
		List<Brand> blist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return blist.get(0);

	}

	public void deleteBrand(int brandId) {
		// TODO Auto-generated method stub
		Brand b=new Brand();
		b.setBrandId(brandId);
		sessionFactory.getCurrentSession().delete(b);
	}

	@SuppressWarnings("unchecked")
	public Brand getBrandByName(String brand) {
		// TODO Auto-generated method stub
		List<Brand> blist = sessionFactory.getCurrentSession().createQuery("from Brand where brandName = " + "'"+brand+"'").getResultList();
		return blist.get(0);
	}

	@SuppressWarnings("unchecked")
	public String listBrandsByJson() {
		// TODO Auto-generated method stub
		List<Brand> blist = sessionFactory.getCurrentSession().createQuery("from Brand").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(blist);
		return list;
	}

}
