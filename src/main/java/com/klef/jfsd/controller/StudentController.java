package com.klef.jfsd.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.repository.CourseRepository;
import com.klef.jfsd.model.Student;
import com.klef.jfsd.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired


    
    @GetMapping("studenthome")
	public ModelAndView studenthome() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("studentlogin")
    public ModelAndView studentLogin() {
        return new ModelAndView("studentlogin");
    }

    @PostMapping("checkstudentlogin")
    public ModelAndView checkStudentLogin(HttpServletRequest request) {
        String semail = request.getParameter("semail");
        String spwd = request.getParameter("spwd");
        
        Student student = studentService.checkstudentlogin(semail, spwd);
        
        ModelAndView mv = new ModelAndView();
        
        if (student != null) {
            HttpSession session = request.getSession();
            session.setAttribute("student", student);
            mv.setViewName("studenthome");
        } else {
            mv.setViewName("studentloginfail");
            mv.addObject("message", "Login Failed");
        }

        return mv;
    }

    @GetMapping("studentlogout")
    public String studentLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/studentlogin";  // Redirect to login page after logout
    }

    @PostMapping("/registerCourse")
   
    public String registerForEvent(@RequestParam("courseId") int courseId, 
                                    @RequestParam("studentId") int studentId, 
                                    HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");
        if (student == null) {
            model.addAttribute("message", "Please log in to register for courses.");
            return "studentlogin";
        }

        String result = studentService.registerForCourse(student.getId(), courseId);
        model.addAttribute("message", result); // Success or failure message

        return "redirect:/viewcourse"; // Redirect to courses page
    }

    @GetMapping("viewregisteredcourse")
    public String viewRegisteredCourses(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            model.addAttribute("message", "Please log in to view registered courses.");
            return "studentlogin"; // Redirect to login page if not logged in
        }

        
        model.addAttribute("registeredCourses", studentService.getRegisteredCourses(student.getId()));

        return "viewregisteredcourse";  // Show registered courses page
    }

    @GetMapping("/studentprofile")
    public ModelAndView studentProfile() {
        return new ModelAndView("studentprofile");
    }

    @GetMapping("/updatestudent")
    public ModelAndView updateStudent() {
        return new ModelAndView("updatestudent");
    }

    @PostMapping("/update")
    public ModelAndView update(HttpServletRequest request) {
        Student student = new Student();
        student.setId(Integer.parseInt(request.getParameter("eid")));
        student.setName(request.getParameter("ename"));
        student.setGender(request.getParameter("egender"));
        student.setDateOfBirth(request.getParameter("edob"));
        student.setDepartment(request.getParameter("edept"));
        student.setLocation(request.getParameter("elocation"));
        student.setPassword(request.getParameter("epwd"));
        student.setContact(request.getParameter("econtact"));

        String msg = studentService.updatestudent(student);

        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);
        return mv;
    }
    
    @Autowired
    private CourseRepository courseRepository;

    @GetMapping("/viewcourse")
    public String viewCourses(Model model) {
        model.addAttribute("courseList", courseRepository.findAll());
        return "viewcourse";
    }
    @GetMapping("dashboard")
    public String viewdashboard(Model model) {
        model.addAttribute("courseList", courseRepository.findAll());
        return "dashboard";
    }

}
