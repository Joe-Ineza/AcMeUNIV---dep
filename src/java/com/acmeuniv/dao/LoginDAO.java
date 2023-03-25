/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.dao;

import com.acmeuniv.model.SignUp;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author joe7n
 */
public class LoginDAO {
    public String verifyCredentials(String email, String password) {
        Session session = null;
        SignUp result = null;
        SignUp accountType = null;
        SignUp againCheck = null;
        try {
            session = FactoryManager.getSessionFactory().openSession();
            Criteria criteria = session.createCriteria(SignUp.class);
            Criteria criteria_acType = session.createCriteria(SignUp.class);
            Criteria criteria_acTypeAgain = session.createCriteria(SignUp.class);
            criteria.add(Restrictions.eq("email", email));
            criteria.add(Restrictions.eq("password", password));
            result = (SignUp) criteria.uniqueResult();
            //Checking the type of account is either school admin or user.
            criteria_acType.add(Restrictions.eq("email", email));
            criteria_acType.add(Restrictions.eq("password", password));
            criteria_acType.add(Restrictions.eq("isManage", "false"));
            accountType = (SignUp) criteria_acType.uniqueResult();
            //Confirms if the admin logged in.
            criteria_acTypeAgain.add(Restrictions.eq("email", email));
            criteria_acTypeAgain.add(Restrictions.eq("password", password));
            criteria_acTypeAgain.add(Restrictions.eq("isManage", "admin"));
            againCheck = (SignUp) criteria_acTypeAgain.uniqueResult();
            
           
        } catch (HibernateException ex) {
        } finally {
            if (session != null) {
                session.close();
            }
        }
         if(result !=null)
         {
                if(accountType != null)
                {
                    return "stu_account";
                }
                else if(againCheck != null)
                {
                    return "it_admin";
                }
                else
                {
                    return "school_admin";
                }
         }else
         {
            return "no_account";
         }
    }
}
