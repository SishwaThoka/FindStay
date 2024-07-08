package com.testproj.controller;

import com.testproj.model.FindStayMember;
import com.testproj.service.LeaseApplicationService;
import com.testproj.service.PropertyService;
import com.testproj.service.RentedPropertyService;
import com.testproj.service.FindStayMemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private FindStayMemberService findStayMemberService;

    @Autowired
    private PropertyService propertyService;
    @Autowired
    private RentedPropertyService rentedPropertyService;

    @Autowired
    private LeaseApplicationService leaseApplicationService;

    @GetMapping("/login")
    public String showLoginForm(Model model,HttpSession session, RedirectAttributes redirectAttributes) {


        FindStayMember loginMem = findStayMemberService.getLoggedInUser(session);
        if(loginMem != null) {
            loginMem = findStayMemberService.getUserById(loginMem.getMemId());
            if(repectiveWelcomePage(loginMem)!=null) {
                model.addAttribute("findStayMember",loginMem);
                return repectiveWelcomePage(loginMem);
            }
        }

        model.addAttribute("findStayMember", new FindStayMember());
        return "login";
    }


   public String repectiveWelcomePage(FindStayMember loginMem){

       if(loginMem.isAdmin()) {
           return "admin/adminDashboard";
       }
       if(loginMem.getUserType().equals("Tenant")){
           return "tenantDashboard";
       } else if (loginMem.getUserType().equals("Landlord")) {
           return "landlordDashboard";
       }
       return null;
   }

    @PostMapping("/login")
    public String doLogin(@ModelAttribute("findStayMember") FindStayMember findStayMember, Model model, HttpSession httpSession, HttpServletRequest request, RedirectAttributes redirectAttributes) {

        FindStayMember loginMem = findStayMemberService.login(findStayMember.getUsername());
       if(loginMem == null){
           redirectAttributes.addFlashAttribute("message","User not Found");
           return "redirect:/login";
       }


//        if(Objects.equals(loginMem.getPassword(), findStayMember.getPassword()))
        if(findStayMemberService.isPasswordMatched(findStayMember.getPassword(),loginMem.getPassword()))
           {  System.out.println("Password Authentication Successful");
              if(repectiveWelcomePage(loginMem)!=null){
                  HttpSession session = request.getSession();
                  session.setAttribute("findStayMember", loginMem);
                  model.addAttribute("findStayMember", loginMem);
                  return repectiveWelcomePage(loginMem);
              }

           }else {
               redirectAttributes.addFlashAttribute("message","Password Incorrect");
               return "redirect:/login";
           }
        return "redirect:/login";
    }

    @GetMapping("/logout")
    public String logoutUser(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        session.removeAttribute("findStayMember");
        session.invalidate();;
        return "redirect:/login";
    }

}
