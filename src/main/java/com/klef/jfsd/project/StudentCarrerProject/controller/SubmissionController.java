package com.klef.jfsd.project.StudentCarrerProject.controller;

import com.klef.jfsd.project.StudentCarrerProject.model.Submission;
import com.klef.jfsd.project.StudentCarrerProject.service.SubmissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/api/submissions")
public class SubmissionController {
    @Autowired
    private SubmissionService submissionService;

    // Save a new submission
    @PostMapping("/submitLink")
    public Submission uploadSubmission(
            @RequestParam("studentId") String studentId,
            @RequestParam(value = "fileLink", required = false) String fileLink,
            @RequestParam(value = "file", required = false) MultipartFile file) throws IOException {

        Submission submission = new Submission();
        submission.setStudentId(studentId);
        submission.setFileLink(fileLink);

        if (file != null) {
            String uploadDir = "uploads/"; // Directory to store uploaded files
            File uploadFolder = new File(uploadDir);
            if (!uploadFolder.exists()) {
                uploadFolder.mkdirs();
            }

            String filePath = uploadDir + file.getOriginalFilename();
            file.transferTo(new File(filePath));
            submission.setFilePath(filePath);
        }

        submission.setStatus("Pending"); // Default status
        return submissionService.saveSubmission(submission);
    }

    // Get all submissions
    @GetMapping
    public List<Submission> getAllSubmissions() {
        return submissionService.getAllSubmissions();
    }

    // Get submissions by student ID
    @GetMapping("/{studentId}")
    public List<Submission> getSubmissionsByStudentId(@PathVariable String studentId) {
        return submissionService.getSubmissionsByStudentId(studentId);
    }
}
