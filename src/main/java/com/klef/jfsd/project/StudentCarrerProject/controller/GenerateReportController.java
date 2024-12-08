package com.klef.jfsd.project.StudentCarrerProject.controller;


import com.klef.jfsd.project.StudentCarrerProject.service.ReportService;
import com.klef.jfsd.project.StudentCarrerProject.model.Report;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/report")
public class GenerateReportController {

    @Autowired
    private ReportService reportService;

    // Method to generate report based on group ID and project
    @RequestMapping(value = "/generate", method = RequestMethod.POST)
    public String generateReport(@RequestParam("groupId") Long groupId, 
                                 @RequestParam("projectId") Long projectId,
                                 @RequestParam("startDate") String startDate,
                                 @RequestParam("endDate") String endDate, Model model) {
        
        // Call service to generate report
        Report report = reportService.generateReport(groupId, projectId, startDate, endDate);
        
        if (report != null) {
            model.addAttribute("report", report);
            return "ReportView"; // JSP page to display the generated report (e.g., ReportView.jsp)
        } else {
            model.addAttribute("error", "No data found for the given criteria.");
            return "reportanalytics"; // Redirect back to the report analytics page
        }
    }

    // Optional: To view previously generated reports
    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public String viewReport(@RequestParam("reportId") Long reportId, Model model) {
        Report report = reportService.getReportById(reportId);
        model.addAttribute("report", report);
        return "ReportView";  // Show the report details
    }
}
