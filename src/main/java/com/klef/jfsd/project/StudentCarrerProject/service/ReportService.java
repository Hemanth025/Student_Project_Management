package com.klef.jfsd.project.StudentCarrerProject.service;

import com.klef.jfsd.project.StudentCarrerProject.model.Report;
import com.klef.jfsd.project.StudentCarrerProject.repo.ReportRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReportService {

    @Autowired
    private ReportRepository reportRepository;

    // Generate a report based on group ID, project ID, start and end dates
    public Report generateReport(Long groupId, Long projectId, String startDate, String endDate) {
        // Add logic to retrieve data (e.g., task completion, progress) based on the criteria
        // For simplicity, assume the report is based on these parameters for now
        
        // Simulate fetching report data (you can query a database or perform calculations)
        Report report = new Report();
        report.setGroupId(groupId);
        report.setProjectId(projectId);
        report.setStartDate(startDate);
        report.setEndDate(endDate);
        
        // Simulate task completion and performance analysis
        report.setTasksCompleted(15);
        report.setMilestonesAchieved(5);
        report.setQualityScore(90);  // Example score out of 100
        
        // Save the report to the repository
        return reportRepository.save(report);
    }

    // Get a report by its ID
    public Report getReportById(Long reportId) {
        return reportRepository.findById(reportId).orElse(null);
    }
}
