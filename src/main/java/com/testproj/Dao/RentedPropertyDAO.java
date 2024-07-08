package com.testproj.Dao;

import com.testproj.model.Property;
import com.testproj.model.RentedProperty;
import com.testproj.model.FindStayMember;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@Repository
@Transactional
public class RentedPropertyDAO extends DAO {

    public boolean rentProperty(Property property, FindStayMember tenant) {


        try {

            // Optionally check if the property is already rented
            if ("Rented".equals(property.getStatus())) {
                System.out.println("Property is already rented.");
                return false;
            }

            if (tenant == null) {
                System.out.println("Tenant not found.");
                return false;
            }

            // Update property status to 'Rented'
            property.setStatus("Rented");
            getSession().update(property);

            // Create a new RentedProperty record
            RentedProperty rentedProperty = new RentedProperty();
            rentedProperty.setProperty(property);
            rentedProperty.setTenant(tenant);
            rentedProperty.setMonthlyRent(property.getPrice());
            rentedProperty.setStartDate(LocalDate.now());
            rentedProperty.setEndDate(LocalDate.now().plusYears(1)); // Assuming a one-year lease

            rentedProperty.setStatus("Active");


            begin();
            getSession().save(rentedProperty);

            commit();
        } catch (Exception e) {
             rollback();
            throw e;
        } finally {
           close();
        }
        return true;
    }

    public List<RentedProperty> findRentedPropertiesByTenantId(Long tenantId) {
      //  List<RentedProperty> rentedProperties = new ArrayList<>();


            String hql = "SELECT rp FROM RentedProperty rp " +
                    "JOIN FETCH rp.property " +
                    "JOIN FETCH rp.tenant " +
                    "WHERE rp.tenant.id = :tenantId";
            Query<RentedProperty> query = getSession().createQuery(hql, RentedProperty.class);
            query.setParameter("tenantId", tenantId);
//            rentedProperties =

        return query.getResultList();
    }

    public List<RentedProperty> getAllRentedProperties(){
     return    getSession().createQuery("FROM RentedProperty ", RentedProperty.class).getResultList();
    }


}
