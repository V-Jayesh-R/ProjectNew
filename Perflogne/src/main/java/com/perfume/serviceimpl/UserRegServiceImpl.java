package com.perfume.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.perfume.daoimpl.UserRegDaoImpl;
import com.perfume.model.UserReg;
@Service
@Transactional
public class UserRegServiceImpl {
	@Autowired
	UserRegDaoImpl userRegDaoImpl;

	public void addUserReg(UserReg userReg) {
		// TODO Auto-generated method stub
		userRegDaoImpl.addUserReg(userReg);

	}

	public List<UserReg> listUsers() {
		// TODO Auto-generated method stub
		return userRegDaoImpl.listUsers();
	}
	
	public UserReg getUserRegById(int userId){
		return userRegDaoImpl.getUserRegById(userId);
	}
	public UserReg getUserRegByName(String userName){
		return userRegDaoImpl.getUserRegByName(userName);
	}

}
