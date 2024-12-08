package com.klef.jfsd.project.StudentCarrerProject.repo;


import com.klef.jfsd.project.StudentCarrerProject.model.Submission;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SubmissionRepository extends JpaRepository<Submission, Long> {
    List<Submission> findByStudentId(String studentId);
}
