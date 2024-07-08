package com.testproj.controller;


import com.testproj.model.FindStayMember;
import com.testproj.service.PropertyService;
import com.testproj.service.FindStayMemberService;
import com.testproj.validation.MemberValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class FindStayMembersController {

    @Autowired
    private FindStayMemberService findStayMemberService;

    @Autowired
    private MemberValidator memberValidator;

    @Autowired
    private PropertyService propertyService;

    @GetMapping("/admin/allFindStayMembers")
    public String getAllUsers(Model model) {
        List<FindStayMember> findStayMembers = findStayMemberService.getAllUsers();
        model.addAttribute("findStayMembers", findStayMembers);
        return "admin/viewMembersList";
    }

    @GetMapping("/admin/add/findStayMember")
    public String showAddUserForm(Model model) {
        model.addAttribute("findStayMember", new FindStayMember());
        return "admin/addFindStayMember";
    }

    @PostMapping("/admin/add/findStayMember")
    public String addUser(@ModelAttribute("findStayMember") FindStayMember findStayMember,RedirectAttributes redirectAttributes) {

        List<String> validationErrors = memberValidator.validateFindStayMember(findStayMember);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/admin/add/findStayMember";  // Assuming the registration form is at "/register"
        }

        findStayMemberService.addUser(findStayMember);
        return "redirect:/admin/allFindStayMembers";
    }

    @GetMapping("/admin/deleteFindStayMember/{memId}")
    public String deleteUser(@PathVariable("memId") long memId,RedirectAttributes redirectAttributes) {
        try{
            findStayMemberService.deleteUser(memId);
        }
        catch(Exception e){
            redirectAttributes.addFlashAttribute("message","Cannot delete as there is an assigned property to the Member");
        }
        return "redirect:/admin/allFindStayMembers";
    }

    @GetMapping("/updateFindStayMember/{memId}")
    public String showEditMemberForm(@PathVariable("memId") long memId, Model model) {
        FindStayMember findStayMember = findStayMemberService.getUserById(memId);
        model.addAttribute("findStayMember", findStayMember);
        return "updateFindStayMember";
    }

    @PostMapping("/updateFindStayMember")
    public String updateUser(@ModelAttribute("findStayMember") FindStayMember findStayMember,@RequestParam("isAdmin") boolean isAdmin,HttpSession httpSession,RedirectAttributes redirectAttributes) {

        List<String> validationErrors = memberValidator.validateFindStayMember(findStayMember);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/updateFindStayMember/"+findStayMember.getMemId();  // Assuming the registration form is at "/register"
        }
        findStayMember.setAdmin(isAdmin);
        findStayMemberService.updateUser(findStayMember);
        if (isAdmin) {
            return "redirect:/login";
        }
        return "redirect:/admin/allFindStayMembers";
    }

    @GetMapping("/updateLandlordProfile/{memId}")
    public String showEditLandlordProfileForm(@PathVariable("memId") long memId, Model model) {
        FindStayMember findStayMember = findStayMemberService.getUserById(memId);
        model.addAttribute("findStayMember", findStayMember);
        return "landlordEditProfile";
    }

    @PostMapping("/updateLandlordProfile")
    public String updateLandlordProfile(@ModelAttribute("findStayMember") FindStayMember findStayMember, HttpSession httpSession, RedirectAttributes redirectAttributes) {

        List<String> validationErrors = memberValidator.validateFindStayMember(findStayMember);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/updateLandlordProfile/"+findStayMember.getMemId();  // Assuming the registration form is at "/register"
        }

        findStayMemberService.updateUser(findStayMemberService.findStayMemberWithEncodePassword(findStayMember));
     //   model.addAttribute("findStayMember",findStayMember);
        return "redirect:/login";
    }

    @GetMapping("/updateTenantProfile/{memId}")
    public String showEditTenantProfileForm(@PathVariable("memId") long memId, Model model) {
        FindStayMember findStayMember = findStayMemberService.getUserById(memId);
        model.addAttribute("findStayMember", findStayMember);
        return "tenantEditProfile";
    }

    @PostMapping("/updateTenantProfile")
    public String updateTenantProfile(@ModelAttribute("findStayMember") FindStayMember findStayMember, RedirectAttributes redirectAttributes) {
        List<String> validationErrors = memberValidator.validateFindStayMember(findStayMember);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/updateTenantProfile/"+findStayMember.getMemId();  // Assuming the registration form is at "/register"
        }
        findStayMemberService.updateUser(findStayMemberService.findStayMemberWithEncodePassword(findStayMember));
      //  model.addAttribute("findStayMember",findStayMember);
        return "redirect:/login";
    }
}
