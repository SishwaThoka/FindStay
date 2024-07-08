package com.testproj.service;

import com.testproj.Dao.LeaseApplicationDAO;
import com.testproj.model.LeaseApplication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LeaseApplicationService {

    @Autowired
    private LeaseApplicationDAO leaseApplicationDAO;
    public void applyForLease(LeaseApplication leaseApplication) {

         leaseApplicationDAO.applyForLease(leaseApplication);
    }

    public  List<LeaseApplication> findAllApplicationsByTenantId(Long tenantId) {
        return leaseApplicationDAO.findAllApplicationsByTenantId(tenantId);
    }

    public List<LeaseApplication> findAllApplicationsByLandlordId(Long landlordId) {
        return leaseApplicationDAO.findAllApplicationsByLandlordId(landlordId);
    }

    public LeaseApplication updateApplicationStatus(Long applicationId, String status, String responseMessage) {
        return leaseApplicationDAO.updateApplicationStatus(applicationId,status,responseMessage);
    }


}
