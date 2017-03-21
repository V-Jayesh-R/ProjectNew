package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.SupplierDaoImpl;
import com.perfume.model.Supplier;
@Service
@Transactional
public class SupplierServiceImpl {
	@Autowired
	private SupplierDaoImpl supplierDaoImpl;

	public void addSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		supplierDaoImpl.addSupplier(supplier);
	}

	public List<Supplier> listSuppliers() {
		// TODO Auto-generated method stub
		return supplierDaoImpl.listSuppliers();
	}

	public Supplier getSupplierById(int supplierId) {
		// TODO Auto-generated method stub
		return supplierDaoImpl.getSupplierById(supplierId);
	}

	public void removeSupplier(int supplierId) {
		// TODO Auto-generated method stub
		supplierDaoImpl.removeSupplier(supplierId);
	}

	public Supplier getSupplierByName(String supplier) {
		// TODO Auto-generated method stub
		return supplierDaoImpl.getSupplierByName(supplier);
	}
	public String listSuppliersByJson() {
		return supplierDaoImpl.listSuppliersByJson();
	}

}
