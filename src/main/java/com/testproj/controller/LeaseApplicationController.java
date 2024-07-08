package com.testproj.controller;

import com.testproj.model.LeaseApplication;
import com.testproj.model.Property;
import com.testproj.model.FindStayMember;
import com.testproj.service.FindStayMemberService;
import com.testproj.service.LeaseApplicationService;
import com.testproj.service.PropertyService;
import com.testproj.service.RentedPropertyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

@Controller
//@RequestMapping("/lease-applications")
public class LeaseApplicationController {

    @Autowired
    private LeaseApplicationService leaseApplicationService;
    @Autowired
    private PropertyService propertyService;
    @Autowired
    private FindStayMemberService findStayMemberService;
    @Autowired
    private RentedPropertyService rentedPropertyService;


    // Process the lease application form
    @PostMapping("tenant/lease-applications/apply")
    public String applyForLease(@RequestParam("propertyId") Long propertyId,
                                @RequestParam("tenantId") Long tenantId,
                                @RequestParam("tenantMessage") String tenantMessage,
                                RedirectAttributes redirectAttributes) {
        try {
            Property property = propertyService.getPropertyById(propertyId);
            FindStayMember tenant = findStayMemberService.getUserById(tenantId);

            LeaseApplication application = new LeaseApplication();
            application.setProperty(property);
            application.setTenant(tenant);
            application.setTenantMessage(tenantMessage);

            leaseApplicationService.applyForLease(application);

            redirectAttributes.addFlashAttribute("successMessage", "Application submitted successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Failed to submit application: " + e.getMessage());
        }

        return "redirect:/properties/tenant/availableProperties";
    }


    @GetMapping("/tenant/Leaseapplication/{tenantId}")
    public  String getAllLeaseApplicationsByTenant(@PathVariable Long tenantId,Model model){

        model.addAttribute("leaseApplications", leaseApplicationService.findAllApplicationsByTenantId(tenantId));
        return "tenantLeaseApplications";
    }


    @GetMapping("/landlord/Leaseapplication/{landlordId}")
    public  String getAllLeaseApplicationsByLandlord(@PathVariable Long landlordId,Model model){

        model.addAttribute("leaseApplications", leaseApplicationService.findAllApplicationsByLandlordId(landlordId));
        return "landlordLeaseApplications";
    }

    // Respond to an application (for landlords)
    @PostMapping("/landlord/lease-applications/respond/{applicationId}")
    public String respondToApplication(@PathVariable Long applicationId, @RequestParam String status,
                                       @RequestParam String responseMessage, RedirectAttributes redirectAttributes, HttpSession session) {
       FindStayMember landlord = findStayMemberService.getLoggedInUser(session);
        try {
           LeaseApplication leaseApplication = leaseApplicationService.updateApplicationStatus(applicationId, status, responseMessage);
            if ("Accepted".equals(status)) {
                boolean rented = rentedPropertyService.rentProperty(leaseApplication.getProperty(), leaseApplication.getTenant());
                if(rented){
                    System.out.println("Property Rented Successfully");
                    redirectAttributes.addFlashAttribute("successMessage", "Property Rented Successfully!");

                }
            }

            redirectAttributes.addFlashAttribute("successMessage", "Response updated successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("errorMessage", "Error updating response: " + e.getMessage());
        }
        return "redirect:/landlord/Leaseapplication/"+landlord.getMemId();
    }





}
