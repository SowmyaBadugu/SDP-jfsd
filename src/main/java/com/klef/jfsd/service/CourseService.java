package com.klef.jfsd.service;

import com.klef.jfsd.model.Course;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class CourseService {

    private final List<Course> courseList = new ArrayList<>();

    public void addCourse(Course course) {
        courseList.add(course);
    }

    public List<Course> getAllCourses() {
        return new ArrayList<>(courseList); // Return a copy to prevent modification
        
    }
}
