package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="faculty_table")
public class Faculty {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Can also be manually set through form if needed
    @Column(name="faculty_id")
    private int id;
    
    @Column(name="faculty_name", nullable=false, length=50)
    private String name;
    
    @Column(name="faculty_gender", nullable=false, length=20)
    private String gender;
    
    @Column(name="faculty_dob", nullable=false, length=20)
    private String dateOfBirth;
    
    @Column(name="faculty_department", nullable=false, length=50)
    private String department;
    
    @Column(name="faculty_email", nullable=false, unique=true, length=50)
    private String email;
    
    @Column(name="faculty_password", nullable=false, length=50)
    private String password;
    
    @Column(name="faculty_location", nullable=false, length=50)
    private String location;
    
    @Column(name="faculty_contact", nullable=false, unique=true, length=20)
    private String contact;
    
    @Column(name="faculty_qualification", nullable=false, length=100)
    private String qualification;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
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

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }
}