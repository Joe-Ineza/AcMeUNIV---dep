/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 *
 * @author joe7n
 */
@Entity
public class SignUp implements Serializable{
    @Id
    private String email;
    private String password;
    private String isManage;

    public SignUp() {
    }

    public SignUp(String email, String password, String isManage) {
        this.email = email;
        this.password = password;
        this.isManage = isManage;
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

    public String isIsManage() {
        return isManage;
    }

    public void setIsManage(String isManage) {
        this.isManage = isManage;
    }
    
    
}
