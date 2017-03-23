package com.perfume.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.perfume.serviceimpl.CategoryServiceImpl;
import com.perfume.serviceimpl.SubCategoryServiceImpl;

@Controller
public class MainController {
	
	@Autowired
	CategoryServiceImpl categoryServiceImpl;
	@Autowired
	SubCategoryServiceImpl subCategoryServiceImpl;
	
	@RequestMapping("/")
	public String getHome(Model model) {
		model.addAttribute("categorylist",categoryServiceImpl.listCategorys());
		model.addAttribute("subcategorylist",subCategoryServiceImpl.listSubCategorys());
		return "index";
	}
	
	@RequestMapping("/demo")
	public String getDemo() {
		
		return "Demo";
	}
	
	@RequestMapping("/header")
	public String getHeader() {
		
		return "Header";
	}
	
	@RequestMapping("/index")
	public String getIndexHome() {
		
		return "index";
	}
	
	
}
