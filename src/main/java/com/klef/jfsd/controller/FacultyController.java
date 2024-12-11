package com.klef.jfsd.controller;

import com.klef.jfsd.model.Course;
import com.klef.jfsd.model.Faculty;


import com.klef.jfsd.service.FacultyService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @Autowired
     // Inject CourseService for handling course operations

    @GetMapping("facultylogin")
    public ModelAndView facultylogin() {
        return new ModelAndView("facultylogin");
    }

    @PostMapping("checkfacultylogin")
    public ModelAndView checkfacultylogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String femail = request.getParameter("femail");
        String fpwd = request.getParameter("fpwd");

        // Verify login credentials
        Faculty faculty = facultyService.checkfacultylogin(femail, fpwd);

        if (faculty != null) {
            HttpSession session = request.getSession();
            session.setAttribute("faculty", faculty);
            mv.setViewName("facultyhome");
        } else {
            mv.setViewName("facultyloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("/facultyhome")
    public ModelAndView facultyhome() {
        return new ModelAndView("facultyhome");
    }

    @GetMapping("facultylogout")
    public ModelAndView facultylogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("faculty");
        return new ModelAndView("facultylogin");
    }

    @GetMapping("/facultysessionfail")
    public ModelAndView facultysessionfail() {
        return new ModelAndView("facultysessionfail");
    }

    @GetMapping("/facultyprofile")
    public ModelAndView facultyprofile() {
        return new ModelAndView("facultyprofile");
    }

    @GetMapping("/faculty-dashboard")
    public ModelAndView facultydashboard() {
        return new ModelAndView("/faculty-dashboard");
    }

    @GetMapping("/updatefaculty")
    public ModelAndView updatefaculty() {
        return new ModelAndView("updatefaculty");
    }

    @GetMapping("/faculty-schedule")
    public ModelAndView facultyschedule() {
        return new ModelAndView("faculty-schedule");
    }

    @GetMapping("addcourse")
    public ModelAndView addcourse() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addcourse");
        return mv;
    }

    @PostMapping("insertcourse")
    public ModelAndView insertcourse(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String description = request.getParameter("cdescription");
        String priceString = request.getParameter("cprice");
       

        Course course = new Course();
        course.setCourseName(name);
        course.setCourseDescription(description);
        try {
            Double price = Double.parseDouble(priceString);
            course.setCoursePrice(price);
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        

        String msg = facultyService.addCourse(course);

        ModelAndView mv = new ModelAndView("coursesucess");
        mv.addObject("message", msg);
        return mv;
    }
    @GetMapping("viewallcourse")
	public ModelAndView viewAllCourse() {
	    ModelAndView mv = new ModelAndView();
	    List<Course> courseList = facultyService.viewAllCourse();
	    mv.setViewName("viewallcourse");
	    mv.addObject("courseList", courseList);
	    return mv;
	}


    
    @PostMapping("/updatefacultyinfo")
    public ModelAndView updatefacultyinfo(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("fid"));
        String name = request.getParameter("fname");
        String gender = request.getParameter("fgender");
        String dob = request.getParameter("fdob");
        String dept = request.getParameter("fdept");
        String location = request.getParameter("flocation");
        String password = request.getParameter("fpwd");
        String contact = request.getParameter("fcontact");
        String qualification = request.getParameter("fqualification");

        Faculty faculty = new Faculty();
        faculty.setId(id);
        faculty.setName(name);
        faculty.setGender(gender);
        faculty.setDateOfBirth(dob);
        faculty.setDepartment(dept);
        faculty.setLocation(location);
        faculty.setPassword(password);
        faculty.setContact(contact);
        faculty.setQualification(qualification);

        String msg = facultyService.updateFaculty(faculty);

        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);

        return mv;
    }
    @GetMapping("/uploadmaterial")
    public ModelAndView uploadMaterialPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("uploadmaterial");
        return mv;
    }
        @GetMapping("/materials")
        public ModelAndView MaterialPage() {
            ModelAndView mv = new ModelAndView();
            mv.setViewName("materials");
            return mv;
       
    }

}
