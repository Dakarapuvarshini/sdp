package com.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.model.Location;
import com.jfsd.service.LocalService;

@RestController
@RequestMapping("/locations")
public class LocationController {

    @Autowired
    private LocalService locationService;
//
//    @GetMapping("/locationview")
//    public ModelAndView getLocationByAddress(@PathVariable String address) {
//        Location location = locationService.getLocationByAddress(address);
//        
//        ModelAndView modelAndView = new ModelAndView("locationview");
//        modelAndView.addObject("location", location); 
//        
//        return modelAndView;
//    }
//    
    @GetMapping("/locationview")
	public ModelAndView getLocationByAddress()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/locationview");
		return mv;
	}
}
