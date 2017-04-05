package com.perfume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.model.Brand;
import com.perfume.serviceimpl.BrandServiceImpl;
import com.perfume.serviceimpl.SubCategoryServiceImpl;

@Controller
public class BrandController {
	@Autowired
	BrandServiceImpl brandServiceImpl;
	@Autowired
	SubCategoryServiceImpl subCategoryServiceImpl;
	
	@RequestMapping("/brand")
	public String getBrandPage(Model model) {
		model.addAttribute("brand", new Brand());
		model.addAttribute("brandlist", brandServiceImpl.listBrands());
		model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
		model.addAttribute("subcategorylistjson",subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		

		return "BrandForm";
	}
	@RequestMapping("/addbrand")
	public String addBrand(@ModelAttribute("brand") Brand brand,Model model) {
		brandServiceImpl.addBrand(brand);
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		model.addAttribute("subcategorylistjson",subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
		
		
		return "redirect:/brand";
	}
	
	@RequestMapping("/updateBrand-{brandId}")
	public String updateCategory(@PathVariable("brandId") int brandId, Model model)
	{
		model.addAttribute("brand",brandServiceImpl.getBrandById(brandId));
		model.addAttribute("brandlistjson", brandServiceImpl.listBrandsByJson());
		model.addAttribute("subcategorylistjson",subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		
		return "BrandForm";
	}
	
	
	
	@RequestMapping("/deleteBrand-{brandId}")
	public String deleteBrand(@PathVariable("brandId") int brandId) {
		brandServiceImpl.deleteBrand(brandId);
		
		return "redirect:/brand";
	}


}
