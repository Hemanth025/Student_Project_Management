package com.klef.jfsd.project.StudentCarrerProject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.project.StudentCarrerProject.model.Student;
import com.klef.jfsd.project.StudentCarrerProject.repo.StudentRepo;
@Service
public class StudentService {
	@Autowired
	private StudentRepo repo;
	public String StudentRegistration(Student student) {
		 repo.save(student);
		 return "registration completed";
	}

	public Student cheackStudentLogin(String email, String password) {
		System.out.println("Checking login for email: " + email);
        Student student = repo.checkstudentlogin(email, password);
        if (student == null) {
            System.out.println("No student found with the provided credentials.");
        } else {
            System.out.println("Login successful for student: " + student.getName());
        }
        return student;
	}
	
}
