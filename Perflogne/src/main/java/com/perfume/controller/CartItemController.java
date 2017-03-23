package com.perfume.controller;

import java.security.Principal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.perfume.model.CartItem;
import com.perfume.serviceimpl.CartItemService;
import com.perfume.serviceimpl.ProductServiceImpl;
import com.perfume.serviceimpl.UserRegServiceImpl;

@Controller
public class CartItemController {
	@Autowired
	ProductServiceImpl productServiceImpl;
	@Autowired
	UserRegServiceImpl userRegServiceImpl;
	@Autowired
	CartItemService cartItemService;
	
	@RequestMapping("/addtocart-{productId}")
	public String addToCart(@PathVariable("productId") int productId , Principal p, @ModelAttribute()CartItem cartItem)
	{
		String userName = p.getName();
		 int userId = userRegServiceImpl.getUserRegByName(userName).getUserId();

		cartItem.setUserId(userId);
		cartItem.setCartId(userId);

		String productName = productServiceImpl.getProductyById(productId).getProductName();
		Double price = productServiceImpl.getProductyById(productId).getProductActualPrice();

		cartItem.setProductName(productName);
		cartItem.setPrice(price);
		cartItem.setQuantity(1);
		cartItem.setAmount(cartItem.getQuantity() * cartItem.getPrice());

		cartItem.setFlag("N");
		Date d=new Date();
		cartItem.setOrderDate(d);

		cartItemService.addToCart(cartItem);

		return "redirect:/cartlist";
	}
	
	@RequestMapping("/cartlist")
	public String getCartList(Model model,Principal p) {
		String username=p.getName();
		int userId=userRegServiceImpl.getUserRegByName(username).getUserId();
		model.addAttribute("cartlistbyjson", cartItemService.listCartItemByJson(userId));
		return "CartList";
	}
	
	
		
	/*@RequestMapping(value = "/cartlis")
	public String getCartList(Principal p ,Model model)
	{		
		int userId = userRegServiceImpl.getUserRegByName(p.getName()).getUserId();
		model.addAttribute("cartlistbyjson",cartItemService.listCartItemByJson(userId));
	
		return "CartList";
	}*/

	

}
