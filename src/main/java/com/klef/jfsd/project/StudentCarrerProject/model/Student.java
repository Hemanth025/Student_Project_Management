package com.klef.jfsd.project.StudentCarrerProject.model;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Student_table")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "student_id", nullable = false)
    private int id;

    @Column(name = "student_name", nullable = false, length = 100)
    private String name;

    @Column(name = "student_gender", nullable = false, length = 10)
    private String gender;

    @JsonFormat(pattern = "dd-MM-yyyy")
    @Column(name = "student_dateofbirth", nullable = false)
    private String dateOfBirth;

    @Column(name = "student_email", nullable = false, unique = true)
    private String email;

    @Column(name = "student_location", nullable = false)
    private String location;

    @Column(name = "student_contact", nullable = false, unique = true, length = 10)
    private String contact;

    @Column(name = "student_password", nullable = false)
    private String password;

    // Constructors
    public Student() {
    }

    public Student(int id, String name, String gender, String dateOfBirth, String email, String location,
                   String contact, String password) {
        this.id = id;
        this.name = name;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.email = email;
        this.location = location;
        this.contact = contact;
        this.password = password;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    // Overriding toString for better representation of the object (optional)
    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", email='" + email + '\'' +
                ", location='" + location + '\'' +
                ", contact='" + contact + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
