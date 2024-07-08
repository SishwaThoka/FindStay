package com.testproj.Dao;

import com.testproj.model.FindStayMember;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class FindStayMemberDAO extends DAO{


    public void saveUser(FindStayMember findStayMember) {
        try {
            begin();
            getSession().save(findStayMember);
            commit();
        } catch (Exception e) {
          rollback();
            throw e;
        } finally {
          close();
        }
    }

    public FindStayMember findByUsername(String username) {
        Session session = getSession();
        try {
          ///  session.beginTransaction();
            Query query = session.createQuery("FROM FindStayMember WHERE username = :username");
            query.setParameter("username", username);
            FindStayMember findStayMember = (FindStayMember) query.getSingleResult();
            commit();
            return findStayMember;
        } catch (Exception e) {
            rollback();
            throw e;
        }
    }

    public FindStayMember findUser(String username) {
        Session session = getSession();
        try {
           // session.beginTransaction();
            Query query = session.createQuery("FROM FindStayMember WHERE username = :username ");
            query.setParameter("username", username);
           // query.setParameter("password", password);
            List<FindStayMember> resultList = query.getResultList();
            return resultList.isEmpty() ? null : resultList.get(0);
        } catch (Exception e) {
            throw e;
        }
    }

    public FindStayMember getUserById(long id) {
        return getSession().get(FindStayMember.class, id);
    }

    public List<FindStayMember> getAllUsers() {

      List<FindStayMember> usrList = getSession().createQuery("FROM FindStayMember", FindStayMember.class).getResultList();

      return usrList;
    }
    public boolean updateUser(FindStayMember findStayMember) {
        Session session = getSession();
        try {
            session.beginTransaction();
            session.merge(findStayMember);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            throw e;
        } finally {
           close();
        }
    }
    public boolean deleteUser(long userId) {
        Session session = getSession();
        try {
            session.beginTransaction();
            FindStayMember findStayMember = session.get(FindStayMember.class, userId);
            if (findStayMember != null) {
                session.delete(findStayMember);
            }
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            throw e;
        } finally {
            close();
        }
    }


}