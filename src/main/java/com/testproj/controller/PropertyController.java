package com.testproj.controller;

import com.testproj.model.LeaseApplication;
import com.testproj.model.Property;
import com.testproj.model.FindStayMember;
import com.testproj.service.LeaseApplicationService;
import com.testproj.service.PropertyService;
import com.testproj.service.FindStayMemberService;
import com.testproj.validation.PropertyValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/properties")
public class PropertyController {

    @Autowired
    private PropertyService propertyService;
    @Autowired
    private FindStayMemberService findStayMemberService;
    @Autowired
    private LeaseApplicationService leaseApplicationService;

    @Autowired
    private PropertyValidator propertyValidator;

    @GetMapping("/all")
    public String getAllProperties(Model model) {
        List<Property> properties = propertyService.getAllProperties();
        model.addAttribute("properties", properties);
        return "admin/viewPropertiesList";
    }

    @GetMapping("/updateProperty/{id}")
    public String showEditPropertyForm(@PathVariable("id") Long id, Model model) {

        Property property = propertyService.getPropertyById(id);
        model.addAttribute("property", property);
        return "editProperty";
    }

    @PostMapping("/updateProperty")
    public String updateProperty(@ModelAttribute("property") Property property ,HttpSession session,RedirectAttributes redirectAttributes) {

        List<String> validationErrors = propertyValidator.validateProperty(property);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/properties/updateProperty/"+property.getId();  // Assuming the registration form is at "/register"
        }

        Property localProperty = propertyService.getPropertyById(property.getId());
        FindStayMember landlord = localProperty.getLandlord() ;
        property.setLandlord(landlord);
        propertyService.updateProperty(property);
        FindStayMember member = findStayMemberService.getLoggedInUser(session);
        if(member.isAdmin()){
            return "redirect:/properties/all";
        }
        else{
            return "redirect:/properties/landlord/"+member.getMemId();
        }

    }



    @GetMapping("/deleteProperty/{id}")
    public String deleteProperty(@PathVariable("id") Long id,HttpSession session) {
        propertyService.deleteProperty(id);
        FindStayMember member = findStayMemberService.getLoggedInUser(session);
        if(member.isAdmin()){
            return "redirect:/properties/all";
        }
        else{
            return "redirect:/properties/landlord/"+member.getMemId();
        }
    }



    @GetMapping("/addProperty")
    public String addPropertyForOwnerByID(Model model) {
        model.addAttribute("property", new Property());
        return "addProperty";
    }

    @PostMapping("/addProperty")
    public String addProperty(@ModelAttribute("property") Property property, @RequestParam("landlordName") String landlordName, RedirectAttributes redirectAttributes, HttpSession session) {

        List<String> validationErrors = propertyValidator.validateProperty(property);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/properties/addProperty";  // Assuming the registration form is at "/register"
        }
        if(landlordName == null || landlordName.trim().isEmpty() || findStayMemberService.login(landlordName)==null){
            redirectAttributes.addFlashAttribute("errorMessage", "Landlord Invalid");
            return "redirect:/properties/addProperty";  // Assuming the registration form is at "/register"

        }


        FindStayMember member = findStayMemberService.getLoggedInUser(session);
        if(member.isAdmin()){
            redirectAttributes = setLandlordPropertyDetails(landlordName, property, redirectAttributes);

            return "redirect:/properties/all";
        }
        else{
            redirectAttributes = setLandlordPropertyDetails(member.getUsername(), property, redirectAttributes);
            return "redirect:/properties/landlord/"+member.getMemId();
        }

    }

    public RedirectAttributes setLandlordPropertyDetails(String landlordName,Property property, RedirectAttributes redirectAttributes){
        FindStayMember landlord = findStayMemberService.login(landlordName);
        if (landlord != null) {
            property.setLandlord(landlord);
            propertyService.addProperty(property);
            return redirectAttributes.addFlashAttribute("Property added successfully");
        } else {
            return redirectAttributes.addFlashAttribute("Landlord not found");
        }
    }

    @GetMapping("/tenant/availableProperties")
    public String getAllAvailableProperties(Model model,HttpSession session) {
        FindStayMember tenant = findStayMemberService.getLoggedInUser(session);

        model.addAttribute("properties", getAllAvailableProperties());

        Set<Long> appliedPropertyIds = getAppliedPropertyIdsByTenant(tenant.getMemId());
        model.addAttribute("appliedPropertyIds", appliedPropertyIds);
        return "tenantAvailblePropertiesList";
    }

    public Set<Long> getAppliedPropertyIdsByTenant(Long tenantId) {
        List<LeaseApplication> applications = leaseApplicationService.findAllApplicationsByTenantId(tenantId);
        return applications.stream()
                .map(application -> application.getProperty().getId())
                .collect(Collectors.toSet());
    }

    public List<Property> getAllAvailableProperties() {
        return propertyService.getAllProperties().stream()
                .filter(property -> "Available".equals(property.getStatus()))
                .collect(Collectors.toList());
    }


    @GetMapping("/landlord/{landlordId}")
    public String getAllPropertiesByLandlordId(@PathVariable("landlordId") Long landlordId, Model model) {
        List<Property> properties = propertyService.getAllPropertiesByLandlordId(landlordId);
        model.addAttribute("properties", properties);
        return "landlordPropertiesByLandlordID";
    }

    @GetMapping("/searchProperties")
    public String searchProperties(@RequestParam("location") String location, Model model) {
        List<Property> properties = propertyService.getPropertiesByLocation(location);
        model.addAttribute("properties", properties);
        return "tenantAvailblePropertiesList";
    }


}