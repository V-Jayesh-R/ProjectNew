package com.perfume.dao;

import java.util.List;

import com.perfume.model.Supplier;

public interface SupplierDao {
	
	public void addSupplier(Supplier supplier);
	public List<Supplier> listSuppliers();
	public Supplier getSupplierById(int supplierId);
	public void removeSupplier(int supplierId);
	public Supplier getSupplierByName(String supplier);
	public String listSuppliersByJson();


}
