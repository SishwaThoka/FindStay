package com.testproj.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "leaseApplications")
public class LeaseApplication {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "propertyId")
    private Property property;

    @ManyToOne
    @JoinColumn(name = "tenantId")
    private FindStayMember tenant;

    @Column(nullable = false)
    private String status;

    @Column
    private String tenantMessage; // Message from the tenant when applying

    @Column
    private String landlordResponseMessage; // Response message from the landlord

    @Temporal(TemporalType.TIMESTAMP)
    private Date applicationDate;

    @Temporal(TemporalType.TIMESTAMP)
    private Date responseDate;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Property getProperty() {
        return property;
    }

    public void setProperty(Property property) {
        this.property = property;
    }

    public FindStayMember getTenant() {
        return tenant;
    }

    public void setTenant(FindStayMember tenant) {
        this.tenant = tenant;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getTenantMessage() {
        return tenantMessage;
    }

    public void setTenantMessage(String tenantMessage) {
        this.tenantMessage = tenantMessage;
    }

    public String getLandlordResponseMessage() {
        return landlordResponseMessage;
    }

    public void setLandlordResponseMessage(String landlordResponseMessage) {
        this.landlordResponseMessage = landlordResponseMessage;
    }

    public Date getApplicationDate() {
        return applicationDate;
    }

    public void setApplicationDate(Date applicationDate) {
        this.applicationDate = applicationDate;
    }

    public Date getResponseDate() {
        return responseDate;
    }

    public void setResponseDate(Date responseDate) {
        this.responseDate = responseDate;
    }

    @Override
    public String toString() {
        return "LeaseApplication{" +
                "id=" + id +
                ", property=" + property +
                ", tenant=" + tenant +
                ", status='" + status + '\'' +
                ", tenantMessage='" + tenantMessage + '\'' +
                ", landlordResponseMessage='" + landlordResponseMessage + '\'' +
                ", applicationDate=" + applicationDate +
                ", responseDate=" + responseDate +
                '}';
    }
// Getters and setters
}

