package com.perfume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.model.Supplier;
import com.perfume.serviceimpl.SupplierServiceImpl;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierServiceImpl supplierServiceImpl;
	
	@RequestMapping("/supplier")
	public String getSupplierPage(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("supplierlist", supplierServiceImpl.listSuppliers());
		model.addAttribute("supplierlistjson", supplierServiceImpl.listSuppliersByJson());

		return "Supplierform";
	}
	@RequestMapping("/addsupplier")
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier) {
		supplierServiceImpl.addSupplier(supplier);;
		return "redirect:/supplier";
	}
	
	@RequestMapping("/updateSupplier-{supplierId}")
	public String updateSupplier(@PathVariable("supplierId") int supplierId, Model model)
	{
		model.addAttribute("supplier",supplierServiceImpl.getSupplierById(supplierId));
		model.addAttribute("supplierlistjson", supplierServiceImpl.listSuppliersByJson());
		return "Supplierform";
	}
	
	
	
	@RequestMapping("/removeSupplier-{supplierId}")
	public String removeSupplier(@PathVariable("supplierId") int supplierId) {
		supplierServiceImpl.removeSupplier(supplierId);
		
		return "redirect:/supplier";
	}

}
