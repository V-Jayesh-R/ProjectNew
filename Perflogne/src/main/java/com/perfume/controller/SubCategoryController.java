package com.perfume.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.model.SubCategory;
import com.perfume.serviceimpl.CategoryServiceImpl;
import com.perfume.serviceimpl.SubCategoryServiceImpl;



@Controller
public class SubCategoryController 
{
	@Autowired
	private SubCategoryServiceImpl subCategoryServiceImpl;
	@Autowired
	private CategoryServiceImpl categoryServiceImpl;
	
	@RequestMapping("/subcategory")
	public String getSubCategory(Model model)
	{
		model.addAttribute("subcategory", new SubCategory());
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());

		return"SubCategoryForm";
	}
	
	@RequestMapping("/addsubcategory")
	public String addSubCategory(@Valid @ModelAttribute("subcategory")SubCategory subCategory,BindingResult result,Model model)
	{
		/*Category category = categoryServiceImpl.getCategoryByName(subCategory.getCategory().getCategoryName());*/
		/*categoryServiceImpl.addCategory(category);*/
		/*subCategory.setCategory(category);
		subCategory.setCategoryId(category.getCategoryId());*/
		if (result.hasErrors()) {
			model.addAttribute("subcategorylist", subCategoryServiceImpl.listSubCategorys());
			model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
			return "SubCategoryForm";
		}
		
		subCategoryServiceImpl.addSubCategory(subCategory);
		return "redirect:/subcategory";
		
	}
	
	@RequestMapping("/updateSubCategory-{subCategoryId}")
	public String updateSubCategory(@PathVariable("subCategoryId") int subCategoryId, @ModelAttribute("subcategory") SubCategory subCategory,Model model)
	{
		model.addAttribute("subcategory",subCategoryServiceImpl.getSubCategoryById(subCategoryId));
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		model.addAttribute("subcategorylistjson", subCategoryServiceImpl.listSubCategorysByJson());
		model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());

		return "SubCategoryForm";
	}
	
	
	
	@RequestMapping("/removeSubCategory-{subCategoryId}")
	public String removeSubCategory(@PathVariable("subCategoryId") int subCategoryId) {
		subCategoryServiceImpl.removeSubCategory(subCategoryId);
		
		return "redirect:/subcategory";
	}
	
}
