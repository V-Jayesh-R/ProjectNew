package com.perfume.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.model.Category;
import com.perfume.serviceimpl.CategoryServiceImpl;

@Controller
public class CategoryController {
	@Autowired
	CategoryServiceImpl categoryServiceImpl;
	
	@RequestMapping("/category")
	public String getCategoryPage(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categorylist", categoryServiceImpl.listCategorys());
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
		return "CategoryForm";
	}
	@RequestMapping("/addcategory")
	public String addCategory(@Valid @ModelAttribute("category") Category category,BindingResult result,Model model) {
		if (result.hasErrors()) {
			model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
			return "CategoryForm";
		}
		categoryServiceImpl.addCategory(category);
		return "redirect:/category";
	}
	
	@RequestMapping("/updateCategory-{categoryId}")
	public String updateCategory(@PathVariable("categoryId") int categoryId, Model model)
	{
		model.addAttribute("category",categoryServiceImpl.getCategoryById(categoryId));
		model.addAttribute("categorylistjson", categoryServiceImpl.listCategorysByJson());
		return "CategoryForm";
	}
	
	
	
	@RequestMapping("/deleteCategory-{categoryId}")
	public String deleteCategory(@PathVariable("categoryId") int categoryId) {
		categoryServiceImpl.deleteCategory(categoryId);
		
		return "redirect:/category";
	}

}
