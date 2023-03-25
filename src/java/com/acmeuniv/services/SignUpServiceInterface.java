/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.services;

import com.acmeuniv.model.SignUp;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.util.List;

/**
 *
 * @author joe7n
 */
public interface SignUpServiceInterface extends Remote{
    public boolean createSignUp(SignUp signUp) throws RemoteException;
    public boolean updateSignUp(SignUp signUp) throws RemoteException;
    public List<SignUp> findAll() throws RemoteException;
    public SignUp findSignUp(String email) throws RemoteException;
    public void deleteSignUp(SignUp signUp) throws RemoteException;
}
