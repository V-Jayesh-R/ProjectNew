package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.perfume.dao.SupplierDao;
import com.perfume.model.Category;
import com.perfume.model.Supplier;
@Repository
public class SupplierDaoImpl implements  SupplierDao{
	@Autowired
	private SessionFactory sessionFactory;

	public void addSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		
	}

	@SuppressWarnings("unchecked")
	public List<Supplier> listSuppliers() {
		// TODO Auto-generated method stub
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return slist;
	}

	@SuppressWarnings("unchecked")
	public Supplier getSupplierById(int supplierId) {
		String hql = "from Supplier where supplierId="+supplierId;
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery(hql).getResultList();
		return slist.get(0);
	}

	public void removeSupplier(int supplierId) {
		// TODO Auto-generated method stub
		Supplier s=new Supplier();
		s.setSupplierId(supplierId);
		sessionFactory.getCurrentSession().delete(s);
		
	}

	@SuppressWarnings("unchecked")
	public Supplier getSupplierByName(String supplier) {
		// TODO Auto-generated method stub
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier where supplierName = " + "'"+supplier+"'").getResultList();
		return slist.get(0);

	}

	@SuppressWarnings("unchecked")
	public String listSuppliersByJson() {
		// TODO Auto-generated method stub
		List<Supplier> slist = sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		Gson g = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String list = g.toJson(slist);
		return list;
	}

	

}
