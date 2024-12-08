package com.klef.jfsd.project.StudentCarrerProject.controller;
/*
import com.klef.jfsd.project.StudentCarrerProject.service.AdminService;
import com.klef.jfsd.project.StudentCarrerProject.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/admin")
public class UpdateProfileController {

    @Autowired
    private AdminService adminService;

    // Method to display admin's current profile details
    @RequestMapping(value = "/profile", method = RequestMethod.GET)
    public String viewProfile(Model model) {
        Admin admin = adminService.getAdminProfile(); // Assuming there is a method to get logged-in admin's details
        model.addAttribute("admin", admin);
        return "adminprofile";  // View page for Admin Profile (adminprofile.jsp)
    }

    // Method to update admin's profile
    @RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
    public String updateProfile(@RequestParam("firstName") String firstName, 
                                @RequestParam("lastName") String lastName,
                                @RequestParam("email") String email, 
                                @RequestParam("phone") String phone, 
                                @RequestParam("dob") String dob,
                                Model model) {
        
        // Assuming there's a method to get the logged-in admin by ID or username
        Admin admin = adminService.getAdminProfile(); // Get the currently logged-in admin details
        
        if (admin != null) {

            
            // Save the updated profile
            adminService.updateAdminProfile(admin);
            
            model.addAttribute("success", "Profile updated successfully!");
            return "adminprofile";  // Redirect back to profile page after successful update
        } else {
            model.addAttribute("error", "Unable to update profile. Please try again.");
            return "adminprofile";  // Redirect back in case of failure
        }
    }
}*/
