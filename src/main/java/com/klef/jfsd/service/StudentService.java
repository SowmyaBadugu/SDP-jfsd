package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Course;
import com.klef.jfsd.model.Student;

public interface StudentService {
    public Student checkstudentlogin(String email, String password);
    
    public String updatestudent(Student s);
    
    public String registerForCourse(int studentId, int courseId);  // Updated parameter name to camelCase
    
    public List<Course> getRegisteredCourses(int studentId);  // Renamed method to match the implementation
}
