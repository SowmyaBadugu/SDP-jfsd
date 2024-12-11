package com.klef.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.model.Faculty;
import com.klef.jfsd.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
   
	@Autowired
	private AdminService adminService;   
	
	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}

	@GetMapping("addfaculty")
	public ModelAndView addfaculty() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addfaculty");
		return mv;
	}
	@GetMapping("home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		
		if (admin != null) {
			mv.setViewName("adminhome");
		} else {
			mv.setViewName("adminloginfail");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request) {
		String name = request.getParameter("sname");
		String gender = request.getParameter("sgender");
		String dob = request.getParameter("sdob");
		String dept = request.getParameter("sdept");
		String email = request.getParameter("semail");
		String password = request.getParameter("spwd");
		String location = request.getParameter("slocation");
		String contact = request.getParameter("scontact");
		
		Student s = new Student();
		s.setName(name);
		s.setGender(gender);
		s.setDepartment(dept);
		s.setDateOfBirth(dob);
		s.setLocation(location);
		s.setEmail(email);
		s.setPassword(password);
		s.setContact(contact);
		
		String msg = adminService.StudentRegistration(s);
		
		ModelAndView mv = new ModelAndView("regsuccess");
		mv.addObject("message", msg);
		return mv;
	}
	
	@PostMapping("insertfaculty")
	public ModelAndView insertFaculty(HttpServletRequest request) {
	    // Retrieve parameters from the form
	    String name = request.getParameter("fname");
	    String gender = request.getParameter("fgender");
	    String dob = request.getParameter("fdob");
	    String dept = request.getParameter("fdept");
	    String email = request.getParameter("femail");
	    String password = request.getParameter("fpwd");
	    String location = request.getParameter("flocation");
	    String contact = request.getParameter("fcontact");
	    String qualification = request.getParameter("fqualification");

	    // Create Faculty object and set attributes
	    Faculty faculty = new Faculty();
	    faculty.setName(name);
	    faculty.setGender(gender);
	    faculty.setDateOfBirth(dob);
	    faculty.setDepartment(dept);
	    faculty.setEmail(email);
	    faculty.setPassword(password);
	    faculty.setLocation(location);
	    faculty.setContact(contact);
	    faculty.setQualification(qualification);

	    // Call service method for faculty registration
	    String msg = adminService.FacultyRegistration(faculty);

	    // Return success view with message
	    ModelAndView mv = new ModelAndView("regsuccess");
	    mv.addObject("message", msg);

	    return mv;
	}

	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents() {
		ModelAndView mv = new ModelAndView();
		List<Student> stulist = adminService.viewAllStudents();
		mv.setViewName("viewallstudents");
		mv.addObject("stulist", stulist);
		return mv;
	}

	@GetMapping("deletestudent")
	public ModelAndView deletestudent() {
		ModelAndView mv = new ModelAndView();
		List<Student> stulist = adminService.viewAllStudents();
		mv.setViewName("deletestudent");
		mv.addObject("stulist", stulist);
		return mv;
	}

	@GetMapping("delete")
	public String delete(@RequestParam("id") int eid) {
		adminService.deletestudent(eid);
		return "redirect:/deletestudent";
	}

	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request) {
		// Invalidate session on logout
		request.getSession().invalidate();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("viewallfaculty")
	public ModelAndView viewallfaculty() {
		ModelAndView mv = new ModelAndView();
		List<Faculty> facultyList = adminService.viewAllfaculty();
		mv.setViewName("viewallfaculty");
		mv.addObject("facultyList", facultyList);
		return mv;
	}

	@GetMapping("deletefaculty")
	public ModelAndView deleteFaculty() {
		ModelAndView mv = new ModelAndView();
		List<Faculty> facultyList = adminService.viewAllfaculty();
		mv.setViewName("deletefaculty");
		mv.addObject("facultyList", facultyList);
		return mv;
	}

	@GetMapping("deletefacultymember")
	public String deleteFacultyMember(@RequestParam("id") int fid) {
		adminService.deleteFaculty(fid);
		return "redirect:/deletefaculty";
	}
}
