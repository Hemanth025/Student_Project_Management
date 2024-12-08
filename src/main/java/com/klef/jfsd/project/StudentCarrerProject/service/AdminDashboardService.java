package com.klef.jfsd.project.StudentCarrerProject.service;

import com.klef.jfsd.project.StudentCarrerProject.model.Group;
import com.klef.jfsd.project.StudentCarrerProject.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class AdminDashboardService {

    @Autowired
    private GroupRepository groupRepository;

    public List<Group> getAllGroups() {
        return groupRepository.findAll();
    }
}
