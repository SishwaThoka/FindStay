//package com.testproj.service;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//@Service
//public class NotificationService {
//
//    @Autowired
//    private JavaMailSender mailSender;
//
//    public void sendApplicationNotification(FindStayMember landlord, LeaseApplication application) {
//        SimpleMailMessage message = new SimpleMailMessage();
//        message.setFrom("noreply@example.com");
//        message.setTo(landlord.getEmail());
//        message.setSubject("New Lease Application Received");
//        message.setText("Dear " + landlord.getName() + ",\n\nYou have received a new lease application for your property: "
//                + application.getProperty().getTitle() + ". Please log in to your dashboard to review and respond.\n\nThank you!");
//
//        mailSender.send(message);
//    }
//}
//tharthava chedham