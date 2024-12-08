package com.jfsd.service;

import java.util.List;

import com.jfsd.model.Buyer;


public interface BuyerService {
	
	public String buyerRegisteration(Buyer buyer);
	public Buyer checkBuyerLogin(String email,String pwd);
	public List<Buyer> getAllBuyers();
	
}
