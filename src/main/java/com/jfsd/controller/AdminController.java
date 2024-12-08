package com.jfsd.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.jfsd.model.Admin;
import com.jfsd.model.Product;
import com.jfsd.service.AdminService;
import com.jfsd.service.FarmerService;
@Controller
public class AdminController { 
    @Autowired
    private AdminService adminService;
    @Autowired
    private FarmerService farmerService;
    @GetMapping("/adminlogin")
    public ModelAndView adminLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");  
        return mv;
    }
    
    @PostMapping("/checkadminlogin")
    public ModelAndView checkAdminLogin(@RequestParam String username, @RequestParam String password) {
        ModelAndView mv = new ModelAndView();

        Admin admin = adminService.checkAdminLogin(username, password);
        if (admin != null) {
            mv.setViewName("adminhome");  
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("message", "Login failed!!");
        }
        return mv;
    }
    @GetMapping("viewproductbyadmin")
    public ModelAndView viewAllProducts() {
	 ModelAndView mv = new ModelAndView();
	    mv.setViewName("viewproductbyadmin");
        List<Product> products = farmerService.viewAllProducts();	        
        mv.addObject("products", products);
        return mv;	        
    }
}
