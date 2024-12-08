package com.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Admin;
import com.jfsd.model.Farmer;
import com.jfsd.repository.AdminRepository;
import com.jfsd.repository.FarmerRepository;
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminRepository adminRepository;
	@Autowired
	FarmerRepository farmerRepository;
	
	@Override
	public String addfarmer(Farmer f) {
		farmerRepository.save(f);

		 
		 return "farmer Inserted Successfully";
	}

	@Override
	public Admin checkAdminLogin(String username, String password) {
	
		return adminRepository.checkAdminLogin(username, password);
	}

}
