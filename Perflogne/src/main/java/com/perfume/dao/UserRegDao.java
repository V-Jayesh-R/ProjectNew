package com.perfume.dao;

import java.util.List;

import com.perfume.model.UserReg;

public interface UserRegDao {
	
	public void addUserReg(UserReg userReg);
	/*public void updateUserReg(UserReg up);
	public void removeUserReg(UserReg ru);*/
	public List<UserReg> listUsers();
	public UserReg getUserRegById(int userId);
	public UserReg getUserRegByName(String userName);

}
