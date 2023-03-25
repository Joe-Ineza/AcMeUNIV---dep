/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.dao;

import com.acmeuniv.model.SignUp;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author hnjej
 */
public class SignUpDao {

    public boolean createSignUp(SignUp signUp) {
        boolean result = false;
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(signUp);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }

    public boolean updateSignUp(SignUp signUp) {
        boolean result = false;
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.update(signUp);
        tx.commit();
        session.close();
        result = Boolean.TRUE;
        return result;
    }

    public List<SignUp> findAll() {
        Session session = null;
        List<SignUp> result = new ArrayList<>();
        try {
            session = FactoryManager.getSessionFactory().openSession();
            result = session.createQuery("from SignUp").list();
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;

    }

    public SignUp findSignUp(String email) {
        Session session = null;
        SignUp result = null;
        try {
            session = FactoryManager.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(SignUp.class);
            criteria.add(Restrictions.eq("email", email));

            result = (SignUp) criteria.uniqueResult();
            
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return result;
    }

    public void deleteSignUp(SignUp signUp) {
        Session session = FactoryManager.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.delete(signUp);
        tx.commit();
        session.close();
    }

}
