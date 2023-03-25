/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.dao;

import com.acmeuniv.model.Admission;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author joe7n
 */
public class AdmissionDao {
    public boolean createAdmission(Admission admission) {
        boolean result = false;
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(admission);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }

    public boolean updateAdmission(Admission admission) {
        boolean result = false;
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.update(admission);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }

    public List<Admission> findAll() {
        Session session = null;
        List<Admission> result = new ArrayList<>();
        try {
            session = FactoryManager.getSessionFactory().openSession();
            result = session.createQuery("from Admission").list();
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;

    }

    public Admission findAdmission(String email) {
        Session session = null;
        Admission result = null;
        try {
            session = FactoryManager.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(Admission.class);
            criteria.add(Restrictions.eq("email", email));

            result = (Admission) criteria.uniqueResult();
            
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;
    }

    public void deleteAdmission(Admission admission) {
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.delete(admission);
        tx.commit();
        session.close();
    }
}
