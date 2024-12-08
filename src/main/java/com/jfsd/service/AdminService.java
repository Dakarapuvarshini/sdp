package com.jfsd.service;

import com.jfsd.model.Admin;
import com.jfsd.model.Farmer;


public interface AdminService {
 public String addfarmer(Farmer f);
 public Admin checkAdminLogin(String username, String password);
}
