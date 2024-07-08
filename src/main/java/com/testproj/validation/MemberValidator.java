package com.testproj.validation;

import com.testproj.model.FindStayMember;
import com.testproj.service.FindStayMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class MemberValidator {

    @Autowired
    private FindStayMemberService findStayMemberService;

    public  List<String> validateFindStayMember(FindStayMember findStayMember) {
        List<String> errors = new ArrayList<>();

        // Validate username
        String usernameValidation = validateUsername(findStayMember.getUsername());
        if (!usernameValidation.isEmpty()) {
            errors.add(usernameValidation);
        }

        // Validate password
        String passwordValidation = validatePassword(findStayMember.getPassword());
        if (!passwordValidation.isEmpty()) {
            errors.add(passwordValidation);
        }

        // Validate name
        String nameValidation = validateName(findStayMember.getName());
        if (!nameValidation.isEmpty()) {
            errors.add(nameValidation);
        }

        // Validate phone number
        String phoneNumberValidation = validatePhoneNumber(findStayMember.getPhone_number());
        if (!phoneNumberValidation.isEmpty()) {
            errors.add(phoneNumberValidation);
        }

        return errors;
    }

    private  String validateUsername(String username) {
        if (username == null || username.trim().isEmpty()) {
            return "Username cannot be empty.";
        }
        if (!username.endsWith("@gmail.com")) {
            return "Username must be a valid Gmail address.";
        }
        return "";
    }

    private  String validatePassword(String password) {
        if (password == null || password.isEmpty()) {
            return "Password cannot be empty.";
        }
        if (password.length() < 8) {
            return "Password must be at least 8 characters long.";
        }
        if (!password.matches(".*[0-9].*")) {
            return "Password must contain at least one number.";
        }
        if (!password.matches(".*[a-zA-Z].*")) {
            return "Password must contain at least one letter.";
        }
        return "";
    }

    private  String validateName(String name) {
        if (name == null || name.trim().isEmpty()) {
            return "Name cannot be empty.";
        }
        if (!name.matches("[\\p{L} .'-]+")) {
            return "Name contains invalid characters.";
        }
        return "";
    }

    private  String validatePhoneNumber(String phoneNumber) {
        if (phoneNumber == null || phoneNumber.trim().isEmpty()) {
            return "Phone number cannot be empty.";
        }
        if (!phoneNumber.matches("\\d{10}")) {
            return "Phone number must be exactly 10 digits long.";
        }
        return "";
    }
}