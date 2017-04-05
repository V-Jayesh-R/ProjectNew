package com.perfume.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.perfume.model.UserReg;

@Component
public class RegistrationHandler {
	
	@Autowired
	UserReg userReg;
	
	public UserReg initFlow(){
		System.out.println("abc");
		return new UserReg();
		
	}

}
