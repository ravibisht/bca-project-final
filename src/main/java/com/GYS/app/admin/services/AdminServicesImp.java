package com.GYS.app.admin.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.GYS.app.admin.model.Admin;
import com.GYS.app.admin.repository.AdminRepository;
import com.GYS.app.security.SecurePassword;

@Service
public class AdminServicesImp implements AdminServices{

	
 @Autowired
 private AdminRepository ar;
 
	@Override
	public boolean validateAdmin(String username, String password) {
             
		   Admin admin=ar.findByUsername(username);
		   SecurePassword sp=new SecurePassword();
		   
		   if(admin!=null) {
			    
			    if(sp.verifyUserPassword(password, admin.getPassword())) {
			    	return true;
			    }
		     }
		
		return false;
	}

	@Override
	public Admin getAdminInfo(String username) {
		
		return ar.findByUsername(username);
	}

	
	
}
