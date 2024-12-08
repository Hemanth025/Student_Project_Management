package com.klef.jfsd.project.StudentCarrerProject.service;


import com.klef.jfsd.project.StudentCarrerProject.model.Submission;
import com.klef.jfsd.project.StudentCarrerProject.repo.SubmissionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SubmissionService {
    @Autowired
    private SubmissionRepository submissionRepository;

    // Add a new submission
    public Submission saveSubmission(Submission submission) {
        return submissionRepository.save(submission);
    }

    // Get all submissions
    public List<Submission> getAllSubmissions() {
        return submissionRepository.findAll();
    }

    // Get submissions by student ID
    public List<Submission> getSubmissionsByStudentId(String studentId) {
        return submissionRepository.findByStudentId(studentId);
    }
}
