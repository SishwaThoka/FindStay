package com.testproj.Dao;

import com.testproj.model.FindStayMember;
import com.testproj.model.Property;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class PropertyDAO extends DAO{

    @Autowired
    private SessionFactory sessionFactory;

    public void saveProperty(Property property) {
        try {
            begin();
            getSession().save(property);
            commit();
        } catch (Exception e) {
            rollback();
            throw e;
        } finally {
            close();
        }
    }

    public void updateProperty(Property property) {

        try {
            begin();
            getSession().merge(property);
            commit();
        } catch (Exception e) {
            rollback();
            throw e;
        } finally {
            close();
        }
    }

    public void deleteProperty(Long id) {
        try {
            begin();
            Property property = getSession().get(Property.class, id);
            if (property != null) {
                getSession().delete(property);
            }
            commit();
        } catch (Exception e) {
            rollback();
            throw e;
        } finally {
            close();
        }
    }

    public Property getPropertyById(Long id) {
        return getSession().get(Property.class, id);
    }

public List<Property> getAllProperties(Long ownerId) {
    try (Session session = sessionFactory.getCurrentSession()) {
        session.beginTransaction();
//        Query query = session.createQuery("SELECT DISTINCT p FROM Property p LEFT JOIN FETCH p.rentedProperties rp JOIN p.landlord u WHERE u.id = :ownerId");
        Query query = session.createQuery("SELECT DISTINCT p FROM Property p LEFT JOIN FETCH p.rentedProperties rp JOIN FETCH p.landlord u WHERE u.id = :ownerId");
        query.setParameter("ownerId", ownerId);
        List<Property> properties = query.getResultList();
        session.getTransaction().commit();

        return properties;
    }
}
    public List<Property> getAllProperties () {
        try (Session session = sessionFactory.getCurrentSession()) {
            session.beginTransaction();
            Query query = session.createQuery("FROM Property");
            List<Property> properties = query.getResultList();
            session.getTransaction().commit();
            return properties;
        }
    }

    public List<Property> getAllPropertiesByLandlordId(Long landlordId) {
        try (Session session = sessionFactory.getCurrentSession()) {
            session.beginTransaction();
            Query query = session.createQuery("SELECT p FROM Property p JOIN FETCH p.landlord l WHERE l.id = :landlordId");
            query.setParameter("landlordId", landlordId);
            List<Property> properties = query.getResultList();
            session.getTransaction().commit();
            return properties;
        }
    }
    public List<Property> getPropertiesByLocation(String location) {
        try (Session session = sessionFactory.getCurrentSession()) {
            session.beginTransaction();
            Query query = session.createQuery("FROM Property WHERE location = :location AND status = 'Available'");
            query.setParameter("location", location);
            List<Property> properties = query.getResultList();
            session.getTransaction().commit();
            return properties;
        }
    }
    }
