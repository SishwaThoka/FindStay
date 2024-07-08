package com.testproj.service;

import com.testproj.Dao.RentedPropertyDAO;
import com.testproj.model.FindStayMember;
import com.testproj.model.Property;
import com.testproj.model.RentedProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RentedPropertyService {

    @Autowired
    private RentedPropertyDAO rentedPropertyDAO;
    public boolean rentProperty(Property property, FindStayMember tenant) {
        return rentedPropertyDAO.rentProperty(property,tenant);
    }

    public List<RentedProperty> findRentedPropertiesByTenantId(Long tenantId){
        return rentedPropertyDAO.findRentedPropertiesByTenantId(tenantId);
    }

    public List<RentedProperty> getAllRentedProperties(){
        return rentedPropertyDAO.getAllRentedProperties();
    }
}
