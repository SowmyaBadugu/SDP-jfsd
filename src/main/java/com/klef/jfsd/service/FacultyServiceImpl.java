package com.klef.jfsd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Course;
import com.klef.jfsd.model.Faculty;
import com.klef.jfsd.repository.CourseRepository;
import com.klef.jfsd.repository.FacultyRepository;

import java.util.List;

@Service
public class FacultyServiceImpl implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;

    @Autowired
    private CourseRepository courseRepository;  // Injecting CourseRepository

    @Override
    public Faculty checkfacultylogin(String email, String password) {
        return facultyRepository.checkFacultyLogin(email, password);
    }

    @Override
    public String updateFaculty(Faculty faculty) {
        Faculty existingFaculty = facultyRepository.findById(faculty.getId()).orElse(null);

        if (existingFaculty != null) {
            existingFaculty.setContact(faculty.getContact());
            existingFaculty.setDateOfBirth(faculty.getDateOfBirth());
            existingFaculty.setDepartment(faculty.getDepartment());
            existingFaculty.setGender(faculty.getGender());
            existingFaculty.setLocation(faculty.getLocation());
            existingFaculty.setName(faculty.getName());
            existingFaculty.setPassword(faculty.getPassword());
            existingFaculty.setQualification(faculty.getQualification());

            facultyRepository.save(existingFaculty);
            return "Faculty Updated Successfully";
        } else {
            return "Faculty Not Found";
        }
    }

    @Override
    public String addCourse(Course course) {
        courseRepository.save(course);  // Saving the course to the repository
        return "Course added successfully!";
    }

    @Override
    public List<Course> viewAllCourse() {
        return courseRepository.findAll();  // Getting all courses
    }
}
