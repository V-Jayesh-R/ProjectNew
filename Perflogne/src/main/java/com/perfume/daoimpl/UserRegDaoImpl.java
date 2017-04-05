package com.perfume.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.perfume.dao.UserRegDao;
import com.perfume.model.Cart;
import com.perfume.model.UserReg;
@Repository
public class UserRegDaoImpl implements UserRegDao{
	@Autowired
	SessionFactory sessionFactory;

	public void addUserReg(UserReg userReg) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		  session.saveOrUpdate(userReg);

	  
	  Cart cart=new Cart();
	  cart.setCartId(userReg.getUserId());
	  cart.setUserId(userReg.getUserId());
	  session.saveOrUpdate(cart);
	  
	  session.saveOrUpdate(userReg);

		
	}

	@SuppressWarnings("unchecked")
	public List<UserReg> listUsers() {
		// TODO Auto-generated method stub
		List<UserReg> userList = sessionFactory.getCurrentSession().createQuery("from UserReg").getResultList();
		return userList;
	}
	
	@SuppressWarnings("unchecked")
	public UserReg getUserRegById(int userId) {
		// TODO Auto-generated method stub
		List<UserReg> userList = sessionFactory.getCurrentSession().createQuery("from UserReg where userId = "+userId).getResultList();
		return userList.get(0);
	}

	

	@SuppressWarnings("unchecked")
	public UserReg getUserRegByName(String userName) {
		// TODO Auto-generated method stub
		List<UserReg> userList = sessionFactory.getCurrentSession().createQuery("from UserReg where userName = "+"'"+userName+"'").getResultList();
		return userList.get(0);
	}

	


}
