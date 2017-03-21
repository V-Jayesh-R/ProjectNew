package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.CartItemDaoImpl;
import com.perfume.model.CartItem;
@Service
@Transactional
public class CartItemService  {
	@Autowired
	CartItemDaoImpl cartItemDaoImpl;

	public void addToCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDaoImpl.addToCart(cartItem);
	}

	public List<CartItem> getCartListByUserId(int userId) {
		// TODO Auto-generated method stub
		return cartItemDaoImpl.getCartListByUserId(userId);
	}

}
