/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.services;

import com.acmeuniv.model.Admission;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;

/**
 *
 * @author joe7n
 */
public interface AdmissionServiceInterface extends Remote{
     public boolean createAdmission(Admission admission) throws RemoteException;
    public boolean updateAdmission(Admission admission) throws RemoteException;
    public List<Admission> findAll() throws RemoteException;
    public Admission findAdmission(String email) throws RemoteException;
    public void deleteAdmission(Admission admission) throws RemoteException;
}
