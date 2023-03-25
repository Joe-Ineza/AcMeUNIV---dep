/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.beans;

import java.io.Serializable;



/**
 *
 * @author joe7n
 */

public class SignUpBean implements Serializable{
  
    private String email;
    private String password;
    private String isManage;

   

    public SignUpBean() {
    }

    

   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getIsManage() {
        return isManage;
    }

    public void setIsManage(String isManage) {
        this.isManage = isManage;
    }

    
    public void clear()
    {
        this.setEmail("");
        this.setPassword("");
        
    }
    
}
