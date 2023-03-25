/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.services;

import com.acmeuniv.dao.AdmissionDao;
import com.acmeuniv.model.Admission;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.List;

/**
 *
 * @author joe7n
 */
public class AdmissionService extends UnicastRemoteObject implements AdmissionServiceInterface{

    AdmissionDao adDao = new AdmissionDao();
    public AdmissionService() throws RemoteException{
        super();
    }

    
    @Override
    public boolean createAdmission(Admission admission) throws RemoteException {
       return adDao.createAdmission(admission);
    }

    @Override
    public boolean updateAdmission(Admission admission) throws RemoteException {
        return adDao.updateAdmission(admission);
    }

    @Override
    public List<Admission> findAll() throws RemoteException {
        return adDao.findAll();
    }

    @Override
    public Admission findAdmission(String email) throws RemoteException {
       return adDao.findAdmission(email);
    }

    @Override
    public void deleteAdmission(Admission admission) throws RemoteException {
       adDao.deleteAdmission(admission);
    }
    
}
