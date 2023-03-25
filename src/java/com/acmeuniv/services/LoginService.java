/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.services;

import com.acmeuniv.dao.LoginDAO;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

/**
 *
 * @author joe7n
 */
public class LoginService extends UnicastRemoteObject implements LoginServiceInterface {

    
    LoginDAO logDao = new LoginDAO();

    public LoginService() throws RemoteException{
        super();
    }
    
    
    @Override
    public String verifyCredentials(String email, String password) throws RemoteException {
        return logDao.verifyCredentials(email, password);
    }
    
}
