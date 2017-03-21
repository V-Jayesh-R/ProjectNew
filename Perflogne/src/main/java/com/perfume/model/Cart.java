package com.perfume.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Cart {
	@Id
	private int cartId;
	private int userId;
	
	@OneToOne
	@JoinColumn(name="userId",insertable=false,nullable=false,updatable=false)
	public UserReg userReg;
	
	public UserReg getUserReg() {
		return userReg;
	}

	public void setUserReg(UserReg userReg) {
		this.userReg = userReg;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

}
