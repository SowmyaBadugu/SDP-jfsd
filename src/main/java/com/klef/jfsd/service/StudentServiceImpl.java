package com.klef.jfsd.service;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.klef.jfsd.model.Course;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.repository.StudentRepository;
import com.klef.jfsd.repository.CourseRepository;

@Service
@Transactional  // Ensure database operations are handled within a transaction context
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private CourseRepository courseRepository;  // Injecting CourseRepository
	
	@Override
	public Student checkstudentlogin(String email, String password) {
		// You might want to check if login credentials are valid
		return studentRepository.checkstudentlogin(email, password);
	}

	@Override
	public String updatestudent(Student s) {
		Student stu = studentRepository.findById(s.getId()).orElse(null);
		
		if (stu != null) {
			stu.setContact(s.getContact());
			stu.setDateOfBirth(s.getDateOfBirth());
			stu.setDepartment(s.getDepartment());
			stu.setGender(s.getGender());
			stu.setLocation(s.getLocation());
			stu.setName(s.getName());
			stu.setPassword(s.getPassword());
			
			studentRepository.save(stu);
			return "Student Updated Successfully";
		} else {
			// Could throw a custom exception here for better error handling
			return "Student Not Found";
		}
	}

	@Override
	public String registerForCourse(int studentId, int courseId) {
	    // Fetching student and course from the database
	    Student student = studentRepository.findById(studentId).orElse(null);
	    Course course = courseRepository.findById(courseId).orElse(null);
	    
	    if (student == null) {
	        return "Student not found!";
	    }

	    if (course == null) {
	        return "Course not found!";
	    }

	    // Register the student for the course
	    if (!student.getRegisteredCourses().contains(course)) {
	        student.getRegisteredCourses().add(course);
	        studentRepository.save(student);  // Save the updated student entity
	        return "Successfully registered for the course!";
	    } else {
	        return "You are already registered for this course.";
	    }
	}

	@Override
	public List<Course> getRegisteredCourses(int studentId) {
	    Student student = studentRepository.findById(studentId).orElse(null);
	    return (student != null) ? student.getRegisteredCourses() : new ArrayList<>();
	}
}
