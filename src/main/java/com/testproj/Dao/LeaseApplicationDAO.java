package com.testproj.Dao;

import com.testproj.model.LeaseApplication;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.List;

@Component
public class LeaseApplicationDAO extends DAO{

    public void applyForLease(LeaseApplication application) {

        try {
            application.setApplicationDate(new Date()); // Set application date at time of creation
            application.setStatus("Pending"); // Default status is Pending upon application
            getSession().save(application);
           commit();
        } catch (Exception e) {
            rollback();
            System.out.println("Failed to apply for lease" +e);
        }
    }

    public List<LeaseApplication> findAllApplicationsByTenantId(Long memId) {

            String query = "SELECT la FROM LeaseApplication la "
                    + "JOIN FETCH la.property p "
//                    + "JOIN FETCH p.landlord o "
                    + "JOIN FETCH la.tenant t "
                    + "WHERE t.memId = :memId";
            List<LeaseApplication> applications = getSession().createQuery(query, LeaseApplication.class)
                    .setParameter("memId", memId)
                    .getResultList();


            System.out.println("applications for member   "+applications);
        return applications;

    }


    public List<LeaseApplication> findAllApplicationsByLandlordId(Long landlordId) {

        String query = "SELECT la FROM LeaseApplication la "
                + "JOIN FETCH la.property p "
                    + "JOIN FETCH p.landlord o "
                + "JOIN FETCH la.tenant t "
                + "WHERE o.memId = :landlordId";
        List<LeaseApplication> applications = getSession().createQuery(query, LeaseApplication.class)
                .setParameter("landlordId", landlordId)
                .getResultList();


        System.out.println("applications for member   "+applications);
        return applications;

    }


    public LeaseApplication updateApplicationStatus(Long applicationId, String status, String responseMessage) {

         try {
             begin();
             LeaseApplication application = getSession().get(LeaseApplication.class, applicationId);
             if (application == null) {
                 System.out.println("LeaseApplication not found");
                 return null;
             }
             application.setStatus(status);
             application.setLandlordResponseMessage(responseMessage);
             application.setResponseDate(new Date()); // Set the response date to now
             getSession().update(application);
             commit();
             return application;
         }
         catch (Exception e){
             System.out.println("Exception in while Responding "+e);
         }
         return null;
        }



}
