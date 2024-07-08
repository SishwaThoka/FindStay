package com.testproj.service;

import com.testproj.Dao.PropertyDAO;
import com.testproj.model.Property;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PropertyService {

    @Autowired
    private PropertyDAO propertyDAO;

    public void addProperty(Property property) {
        propertyDAO.saveProperty(property);
    }

    public void updateProperty(Property property) {
        propertyDAO.updateProperty(property);
    }

    public void deleteProperty(Long id) {
        propertyDAO.deleteProperty(id);
    }

    public Property getPropertyById(Long id) {

        return propertyDAO.getPropertyById(id);
    }

    public List<Property> getAllPropertiesByLandlordId(Long landlordId) {
        return propertyDAO.getAllPropertiesByLandlordId(landlordId);
    }

    public List<Property> getAllProperties(Long owner_id) {
        return propertyDAO.getAllProperties(owner_id);

    }
    public List<Property> getAllProperties() {

        return propertyDAO.getAllProperties();
    }

    public List<Property> getPropertiesByLocation(String location) {
        return propertyDAO.getPropertiesByLocation(location);
    }
    }
