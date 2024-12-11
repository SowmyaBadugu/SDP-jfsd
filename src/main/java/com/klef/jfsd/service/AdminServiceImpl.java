package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Faculty;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.AdminRepository;
import com.klef.jfsd.repository.FacultyRepository;
import com.klef.jfsd.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService {
    
    @Autowired
    private AdminRepository adminRepository;
    
    @Autowired
    private StudentRepository studentRepository;
    
    @Autowired
    private FacultyRepository facultyRepository; // Added faculty repository

    // Student Management Methods
    @Override
    public String StudentRegistration(Student student) {
        studentRepository.save(student);
        return "Student Added Successfully";
    }

    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public String deletestudent(int sid) {
        studentRepository.deleteById(sid);
        return "Deleted Successfully";
    }

    // Admin Login Method
    @Override
    public Admin checkAdminLogin(String username, String password) {
        return adminRepository.checkAdminLogin(username, password);
    }

    // Faculty Management Methods
    @Override
    public String FacultyRegistration(Faculty faculty) {
        facultyRepository.save(faculty); // Save the faculty to the database
        return "Faculty Added Successfully";
    }

    @Override
    public List<Faculty> viewAllfaculty() {
        return facultyRepository.findAll(); // Fetch all faculty members
    }

    @Override
    public String deleteFaculty(int facultyId) {
        facultyRepository.deleteById(facultyId); // Delete the faculty member by ID
        return "Faculty Deleted Successfully";
    }
}
