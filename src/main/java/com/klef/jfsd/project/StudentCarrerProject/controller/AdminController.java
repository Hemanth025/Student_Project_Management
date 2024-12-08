package com.klef.jfsd.project.StudentCarrerProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.klef.jfsd.project.StudentCarrerProject.model.Admin;
import com.klef.jfsd.project.StudentCarrerProject.model.Student;
import com.klef.jfsd.project.StudentCarrerProject.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@RestController

public class AdminController {
	@Autowired
	private AdminService servies;
		
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	@PostMapping("cheakadminlogin")
	public ModelAndView cheakadminlogin(HttpServletRequest request, HttpSession session) {
		String email = request.getParameter("cname");
        String password = request.getParameter("password");

        Admin admin = servies.cheakAdminLogin(email, password);

        ModelAndView mv = new ModelAndView();
        if (admin != null) {
            session.setAttribute("admin", admin); // Store student in session
            return new ModelAndView("redirect:/adminhome"); // Redirect to UserHome
        } else {
            mv.setViewName("adminlogfail");
            mv.addObject("msg", "Login failed! Please try again.");
            return mv;
        }
	}
	@GetMapping("viewallstudent")
	public ModelAndView viewallstudents() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallstudent");
		List<Student> students =servies.viewAllStudent();
		mv.addObject("studentList",students);
		return mv;
	}


	@GetMapping("deletestudent")
	public ModelAndView deletestudent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletestudent");
		List<Student> students =servies.viewAllStudent();
		mv.addObject("studentlist",students);
		return mv;
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id)
	{
		servies.deleteStudent(id);
		
		return "redirect:/deleteStudent";
	}
	@GetMapping("viewstudentbyid")
	 public ModelAndView viewstudentbyid() {
		ModelAndView mv = new ModelAndView();
		List<Student> students =servies.viewAllStudent();
		mv.addObject("studentlist",students);
		
		
		mv.setViewName("viewstudentbyid");
		return mv;
	}
	@PostMapping("displaystudent")
	
	public ModelAndView displaycustomer(HttpServletRequest request)
	{
		int id = Integer.parseInt(request.getParameter("id"));
		
		Student student = servies.displaystudentById(id);
		
		ModelAndView mv = new ModelAndView("displaystudent");
		mv.addObject("c",student);
		
		return mv;
	}
}
