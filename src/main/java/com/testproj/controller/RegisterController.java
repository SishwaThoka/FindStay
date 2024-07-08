package com.testproj.controller;

import com.testproj.model.FindStayMember;
import com.testproj.service.FindStayMemberService;
import com.testproj.validation.MemberValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class RegisterController {

    @Autowired
    private FindStayMemberService findStayMemberService;
    @Autowired
    private MemberValidator memberValidator;
    @GetMapping("/welcome")
    public String defaultPage() {
        return "welcome";
    }

    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new FindStayMember());
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute("findStayMember") FindStayMember findStayMember,RedirectAttributes redirectAttributes) {

        List<String> validationErrors = memberValidator.validateFindStayMember(findStayMember);
        if (!validationErrors.isEmpty()) {
            // Add errors to the redirect attributes to display on the registration form
            redirectAttributes.addFlashAttribute("errorMessage", validationErrors);
            return "redirect:/register";  // Assuming the registration form is at "/register"
        }
        if(findStayMemberService.findMemberByUsername(findStayMember.getUsername())!=null){

            redirectAttributes.addFlashAttribute("errorMessage", "Username already exists");
            return "redirect:/register";
        }
       findStayMemberService.register(findStayMemberService.findStayMemberWithEncodePassword(findStayMember));
        return "redirect:/login"; // Redirect to login page after successful registration
    }
}

