package com.testproj.config;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.testproj.model.FindStayMember;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        System.out.println("Inside AuthInterceptor preHandle method.");
        String url = request.getRequestURI();
        if(url.contains("/login") || url.contains("/register") || url.contains("/welcome")){
            return true;
        }
        HttpSession session = request.getSession(false);
        if(session==null) {

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login");
            requestDispatcher.forward(request,response);
            return false;
        }else{

            FindStayMember user = (FindStayMember) session.getAttribute("findStayMember");
            if(user == null){
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login");
                requestDispatcher.forward(request,response);
                return false;
            }
            if(!user.isAdmin() && url.contains("admin")){
                response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                return false;
            }

            if(!user.getUserType().equals("Landlord") && url.contains("landlord")){
                response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                return false;
            }
            if(!user.getUserType().equals("Tenant") && url.contains("tenant")){
                response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                return false;
            }


            System.out.println("User in this request :: "+user.getMemId());
        }
        return true;
    }

}
