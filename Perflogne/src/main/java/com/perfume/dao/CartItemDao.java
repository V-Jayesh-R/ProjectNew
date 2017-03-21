package com.perfume.dao;

import java.util.List;

import com.perfume.model.CartItem;

public interface CartItemDao {
	
	public void addToCart(CartItem	cartItem);
	public List<CartItem> getCartListByUserId(int userId);
	//public void deleteCartItem(int cartItemId);

}
