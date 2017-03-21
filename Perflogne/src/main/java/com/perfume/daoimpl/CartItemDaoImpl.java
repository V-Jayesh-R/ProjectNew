package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.dao.CartItemDao;
import com.perfume.model.CartItem;
@Repository
public class CartItemDaoImpl implements CartItemDao {
	@Autowired
	SessionFactory sessionFactory;

	public void addToCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);

	}

	@SuppressWarnings("unchecked")
	public List<CartItem> getCartListByUserId(int userId) {
		// TODO Auto-generated method stub
		
		List<CartItem> cartList = sessionFactory.getCurrentSession().createQuery("from CartItem").getResultList();
		
		return cartList;
	}

}
