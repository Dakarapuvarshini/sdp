package com.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.model.Location;
import com.jfsd.repository.LocationRepository;

@Service
public class LocationImpl implements LocalService {

	
	
	  @Autowired
	  private LocationRepository locationRepository;

	  @Override
	  public Location getLocationByAddress(String address) {
	      return locationRepository.findByAddress(address);
	  }


	  
	


}
