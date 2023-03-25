/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.beans;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author joe7n
 */
public class AdmissionBean implements Serializable{
    private String email;
    private String firstName;
    private String lastName;
    private String gender;
    private String phoneN;
    private String locationA;
    private String level_study;
    private String faculty;
    private String department;
    private byte[] prof_pic;
    private byte[] diploma;
    private String dob;
    private String app_status;

    public AdmissionBean() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhoneN() {
        return phoneN;
    }

    public void setPhoneN(String phoneN) {
        this.phoneN = phoneN;
    }

    public String getLocationA() {
        return locationA;
    }

    public void setLocationA(String locationA) {
        this.locationA = locationA;
    }

    public String getLevel_study() {
        return level_study;
    }

    public void setLevel_study(String level_study) {
        this.level_study = level_study;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public byte[] getProf_pic() {
        return prof_pic;
    }

    public void setProf_pic(byte[] prof_pic) {
        this.prof_pic = prof_pic;
    }

    public byte[] getDiploma() {
        return diploma;
    }

    public void setDiploma(byte[] diploma) {
        this.diploma = diploma;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getApp_status() {
        return app_status;
    }

    public void setApp_status(String app_status) {
        this.app_status = app_status;
    }
   

    
   
    
}
