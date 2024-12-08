

package com.jfsd.service;

import com.jfsd.model.Location;

public interface LocalService {
    Location getLocationByAddress(String address);
}
