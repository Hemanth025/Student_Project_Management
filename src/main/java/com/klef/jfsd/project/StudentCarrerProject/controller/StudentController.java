package com.klef.jfsd.project.StudentCarrerProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import com.klef.jfsd.project.StudentCarrerProject.model.Student;
import com.klef.jfsd.project.StudentCarrerProject.service.StudentService;

@RestController
public class StudentController {

    @Autowired
    private StudentService services;

    @GetMapping("/")
    public ModelAndView home() {
        return new ModelAndView("home");
    }

    @GetMapping("/studentRegistration")
    public ModelAndView studentRegistration() {
        return new ModelAndView("studentRegistration");
    }

    @PostMapping("/insertStudent")
    public ModelAndView insertStudent(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String dateofbirth = request.getParameter("dateofbirth");
        String gender = request.getParameter("gender");
        String location = request.getParameter("location");
        String password = request.getParameter("password");

        Student student = new Student();
        student.setName(name);
        student.setEmail(email);
        student.setContact(contact);
        student.setDateOfBirth(dateofbirth);
        student.setGender(gender);
        student.setLocation(location);
        student.setPassword(password);

        String message = services.StudentRegistration(student);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentRegSuccus");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("/studentLogin")
    public ModelAndView studentLogin() {
        return new ModelAndView("studentLogin");
    }

    @PostMapping("/checkStudent")
    public ModelAndView verifyStudentLogin(HttpServletRequest request, HttpSession session) {
        String email = request.getParameter("cname");
        String password = request.getParameter("password");

        Student student = services.cheackStudentLogin(email, password);

        ModelAndView mv = new ModelAndView();
        if (student != null) {
            session.setAttribute("student", student); // Store student in session
            return new ModelAndView("redirect:/userHome"); // Redirect to UserHome
        } else {
            mv.setViewName("studentLogFail");
            mv.addObject("msg", "Login failed! Please try again.");
            return mv;
        }
    }

    @GetMapping("/userHome")
    public ModelAndView userHome(HttpSession session) {
        Student student = (Student) session.getAttribute("student");

        ModelAndView mv = new ModelAndView();
        if (student != null) {
            mv.addObject("student", student);
            mv.setViewName("UserHome");
        } else {
            mv.setViewName("studentLogFail");
        }
        return mv;
    }
    
    @GetMapping("/studentDashboard")
    public ModelAndView studentDashboard() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Dashboard");  // Add the correct view for Dashboard
        return mv;
    }

    @GetMapping("/studentProjectManagement")
    public ModelAndView studentProjectManagement() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ProjectManagement");  // Add the correct view for Project Management
        return mv;
    }

    @GetMapping("/studentTaskCoordination")
    public ModelAndView studentTaskCoordination() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("TaskCoordination");  // Add the correct view for Task Coordination
        return mv;
    }

    @GetMapping("/studentProgressTracking")
    public ModelAndView studentProgressTracking() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("ProgressTracking");  // Add the correct view for Progress Tracking
        return mv;
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();  // Invalidate the session on logout
        return "redirect:/";  // Redirect to home or login page
    }

}
