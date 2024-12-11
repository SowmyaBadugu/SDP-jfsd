package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Course;
import com.klef.jfsd.model.Faculty;

public interface FacultyService {
    public Faculty checkfacultylogin(String email, String password);
    
    public String updateFaculty(Faculty faculty);

    // This method accepts a Course object for adding a course
    public String addCourse(Course course);

    // This method returns a list of all courses
    public List<Course> viewAllCourse();
}
