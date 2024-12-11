package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Faculty;
import com.klef.jfsd.model.Student;

public interface AdminService {
    
    // Student Management
    public String StudentRegistration(Student student);
    
    public List<Student> viewAllStudents();
    
    public String deletestudent(int sid);
    
    // Admin Login
    public Admin checkAdminLogin(String username, String password);
    
    // Faculty Management
    public String FacultyRegistration(Faculty faculty);
    
    public List<Faculty> viewAllfaculty();
    
    public String deleteFaculty(int facultyId);
}
