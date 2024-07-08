package com.testproj.model;

import org.springframework.beans.factory.annotation.Value;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Property {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private double price;
    private String house_type;

    @Value("Available")
    private String status;

    @ManyToOne
    @JoinColumn(name = "landlordId") // This column is the foreign key in the database.
    private FindStayMember landlord; // This replaces the integer landlordId field.

    private String location;

    @OneToMany(mappedBy = "property", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<RentedProperty> rentedProperties = new HashSet<>();

    // Standard getters and setters

    // Replace getter and setter for landlordId with those for landlord (FindStayMember)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getHouseType() {
        return house_type;
    }

    public void setHouseType(String houseType) {
        this.house_type = houseType;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public FindStayMember getLandlord() {
        return landlord;
    }

    public void setLandlord(FindStayMember landlord) {
        this.landlord = landlord;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Set<RentedProperty> getRentedProperties() {
        return rentedProperties;
    }

    public void setRentedProperties(Set<RentedProperty> rentedProperties) {
        this.rentedProperties = rentedProperties;
    }

    @Override
    public String toString() {
        return "Property{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", house_type='" + house_type + '\'' +
                ", status='" + status + '\'' +
                ", landlord=" + (landlord != null ? landlord.getMemId() : "null") +
                ", location='" + location + '\'' +
                '}';
    }
}
