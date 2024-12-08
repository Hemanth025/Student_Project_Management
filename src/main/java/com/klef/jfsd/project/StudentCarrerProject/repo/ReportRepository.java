package com.klef.jfsd.project.StudentCarrerProject.repo;


import com.klef.jfsd.project.StudentCarrerProject.model.Report;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReportRepository extends JpaRepository<Report, Long> {
    // Additional custom queries (if needed) can be added here
}
