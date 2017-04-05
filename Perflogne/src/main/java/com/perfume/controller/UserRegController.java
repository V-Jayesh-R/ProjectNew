package com.perfume.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.perfume.model.UserReg;
import com.perfume.serviceimpl.UserRegServiceImpl;

@Controller
public class UserRegController {
	@Autowired
	UserRegServiceImpl userRegServiceImpl;
	
	/*@RequestMapping("/userreg")
	public String getUserPage(Model model) {
		model.addAttribute("userreg", new UserReg());
		model.addAttribute("userreglist", userRegServiceImpl.listUsers());
	
		return "UserRegForm";
	}*/
	
	/*@RequestMapping("/adduserreg")
	public String addUserReg( @ModelAttribute("userreg")UserReg userReg) {
		userReg.setEnabled(true);
		userReg.setRole("USER");
		userRegServiceImpl.addUserReg(userReg);
		return "redirect:/userreg";
	}*/
	

	@RequestMapping("/login")
	public String addLogin() {
	
		return "LoginForm";
	}
	
	@RequestMapping(value="/perform_logout", method = RequestMethod.GET)
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";
	}
	
}
