package com.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Buyer;
import com.jfsd.repository.BuyerRepository;
@Service
public class BuyerServiceImpl implements BuyerService{
	@Autowired
	public BuyerRepository buyerRepository;
	
	@Override
	public String buyerRegisteration(Buyer buyer) {
		
		buyerRepository.save(buyer);
		return "wellcomee";
	}

	@Override
	public Buyer checkBuyerLogin(String email, String pwd) {
		
		return buyerRepository.checkbuyerLogin(email,pwd);
	}

	@Override
	public List<Buyer> getAllBuyers() {
		return buyerRepository.findAll();
	}

	
	}
	
	
	

