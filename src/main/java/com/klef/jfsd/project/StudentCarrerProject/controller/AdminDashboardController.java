package com.klef.jfsd.project.StudentCarrerProject.controller;


import com.klef.jfsd.project.StudentCarrerProject.model.Group;
import com.klef.jfsd.project.StudentCarrerProject.service.AdminDashboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.List;

@RestController
public class AdminDashboardController {

    @Autowired
    private AdminDashboardService adminDashboardService;

    @GetMapping("/admin/groups")
    public List<Group> getAllGroups() {
        return adminDashboardService.getAllGroups();
    }
}
