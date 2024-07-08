package com.testproj.controller;

import com.testproj.Dao.FindStayMemberDAO;
import com.testproj.model.FindStayMember;
import com.testproj.model.RentedProperty;
import com.testproj.service.RentedPropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class RentedPropertyController {


    @Autowired
    private RentedPropertyService rentedPropertyService;

    @Autowired
    private FindStayMemberDAO userService;


    @GetMapping("/admin/rentedPropertiesList")
    public String getAllRentedProperties(Model model){
       model.addAttribute("rentedProperties",rentedPropertyService.getAllRentedProperties());
        return "admin/viewRentedPropertiesList";
    }

    @GetMapping("/tenant/rentedPropertiesByTenantId/{memId}")
    public String getRentedPropertiesByTenantId(@PathVariable("memId") long memId, Model model, String username) {
        FindStayMember findStayMember = userService.getUserById(memId);
         model.addAttribute("memId", memId);
                 List<RentedProperty> rentedProperties = rentedPropertyService.findRentedPropertiesByTenantId(memId);
        model.addAttribute("rentedProperties", rentedProperties);
        return "rentedPropertyByTenantID";


    }
}
