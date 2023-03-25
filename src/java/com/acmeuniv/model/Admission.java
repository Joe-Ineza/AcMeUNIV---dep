/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.acmeuniv.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;

/**
 *
 * @author joe7n
 */
@Entity
public class Admission implements Serializable{
    @Id
    private String email;
    private String fName;
    private String lName;
    private String gender;
    private String phoneN;
    private String locationA;
    private String level_study;
    private String faculty;
    private String department;
    private byte[] prof_pic;
    private byte[] diploma;
    private Date dob;
    private String app_status;

    public Admission() {
    }

    public Admission(String email, String fName, String lName, String gender, String phoneN, String locationA, String level_study, String faculty, String department, byte[] prof_pic, byte[] diploma, Date dob, String app_status) {
        this.email = email;
        this.fName = fName;
        this.lName = lName;
        this.gender = gender;
        this.phoneN = phoneN;
        this.locationA = locationA;
        this.level_study = level_study;
        this.faculty = faculty;
        this.department = department;
        this.prof_pic = prof_pic;
        this.diploma = diploma;
        this.dob = dob;
        this.app_status = app_status;
    }

    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
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

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getApp_status() {
        return app_status;
    }

    public void setApp_status(String app_status) {
        this.app_status = app_status;
    }

    
    
}
