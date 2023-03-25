/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.services;

import com.acmeuniv.dao.SignUpDao;
import com.acmeuniv.model.SignUp;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.List;

/**
 *
 * @author joe7n
 */
public class SignUpService extends UnicastRemoteObject implements SignUpServiceInterface{
        SignUpDao signUpDao = new SignUpDao();

    public SignUpService() throws RemoteException {
        super();
    }

    @Override
    public boolean createSignUp(SignUp signUp) throws RemoteException {
        return signUpDao.createSignUp(signUp);
    }

    @Override
    public boolean updateSignUp(SignUp signUp) throws RemoteException {
      return signUpDao.updateSignUp(signUp);
    }

    @Override
    public List<SignUp> findAll() throws RemoteException {
        return signUpDao.findAll();
    }

    @Override
    public SignUp findSignUp(String email) throws RemoteException {
       return signUpDao.findSignUp(email);
    }

    @Override
    public void deleteSignUp(SignUp signUp) throws RemoteException {
        signUpDao.deleteSignUp(signUp);
    }

    

}
