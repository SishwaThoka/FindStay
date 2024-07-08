package com.testproj.validation;


import com.testproj.model.Property;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class PropertyValidator {

    public List<String> validateProperty(Property property) {
        List<String> errors = new ArrayList<>();

        // Validate title
        String titleValidation = validateTitle(property.getTitle());
        if (!titleValidation.isEmpty()) {
            errors.add(titleValidation);
        }

        // Validate price
        String priceValidation = validatePrice(property.getPrice());
        if (!priceValidation.isEmpty()) {
            errors.add(priceValidation);
        }

        // Validate house type
        String houseTypeValidation = validateHouseType(property.getHouseType());
        if (!houseTypeValidation.isEmpty()) {
            errors.add(houseTypeValidation);
        }

        // Validate location
        String locationValidation = validateLocation(property.getLocation());
        if (!locationValidation.isEmpty()) {
            errors.add(locationValidation);
        }

        return errors;
    }

    private String validateTitle(String title) {
        if (title == null || title.trim().isEmpty()) {
            return "Title cannot be empty.";
        }
        if (title.length() < 3 || title.length() > 50) {
            return "Title must be between 3 and 50 characters long.";
        }
        if (!title.matches("[a-zA-Z0-9\\s]+")) {
            return "Title contains invalid characters.";
        }
        return "";
    }

    private String validatePrice(double price) {
        if (price <= 0) {
            return "Price must be greater than zero.";
        }
        return "";
    }

    private String validateHouseType(String houseType) {
        if (houseType == null || houseType.trim().isEmpty()) {
            return "House type cannot be empty.";
        }
        if (houseType.length() < 3 || houseType.length() > 50) {
            return "House type must be between 3 and 50 characters long.";
        }
        if (!houseType.matches("[a-zA-Z0-9\\s]+")) {
            return "House type contains invalid characters.";
        }
        return "";
    }

    private String validateLocation(String location) {
        if (location == null || location.trim().isEmpty()) {
            return "Location cannot be empty.";
        }
        if (location.length() < 3 || location.length() > 50) {
            return "Location must be between 3 and 50 characters long.";
        }
        if (!location.matches("[a-zA-Z0-9\\s]+")) {
            return "Location contains invalid characters.";
        }
        return "";
    }
}
