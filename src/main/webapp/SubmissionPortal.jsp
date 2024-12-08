<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submission Portal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            height: 100vh;
            background-color: #f4f6f9;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 250px;
            background-color: #2c3e50;
            padding: 20px;
            color: white;
        }

        .sidebar h3 {
            color: #3498db;
            margin-bottom: 20px;
            text-align: center;
        }

        .sidebar .educational-links a {
            display: block;
            color: #ecf0f1;
            text-decoration: none;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .sidebar .educational-links a:hover {
            background-color: #34495e;
            transform: translateX(10px);
        }

        /* Main Content Area */
        .main-content {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        /* Header Styles */
        .header {
            background-color: white;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding: 15px 30px;
            text-align: center;
        }

        .header h1 {
            color: #2c3e50;
            margin-bottom: 15px;
            font-size: 2em;
        }

        /* Middle Navigation Styles */
        .middle-nav {
            display: flex;
            justify-content: center;
            background-color: #3498db;
            padding: 10px 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .middle-nav-menu {
            display: flex;
            gap: 20px;
        }

        .middle-nav-menu a {
            text-decoration: none;
            color: white;
            font-weight: 600;
            padding: 10px 15px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .middle-nav-menu a:hover {
            background-color: rgba(255,255,255,0.2);
        }

        /* Top Navigation Styles */
        .top-nav {
            display: flex;
            justify-content: flex-end;
            align-items: center;
            padding: 10px 30px;
            background-color: #f8f9fa;
            border-bottom: 1px solid #e9ecef;
        }

        .logout-btn {
            background-color: #e74c3c;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #c0392b;
        }

        /* Content Styles */
        .submission-portal {
            flex-grow: 1;
            padding: 30px;
            margin: 20px;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        .submission-section, .link-section, .feedback-section {
            margin-bottom: 30px;
        }

        .submission-section h2, .link-section h2, .feedback-section h2 {
            margin-bottom: 15px;
            color: #2c3e50;
        }

        .upload-btn, .submit-link-btn {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            border: none;
        }

        .upload-btn:hover, .submit-link-btn:hover {
            background-color: #2980b9;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            padding: 15px;
            border-bottom: 1px solid #e9ecef;
            text-align: left;
        }

        table th {
            background-color: #f8f9fa;
            font-weight: bold;
            color: #2c3e50;
        }

        table tr:nth-child(even) {
            background-color: #f4f6f9;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h3>Educational Resources</h3>
        <div class="educational-links">
            <a href="https://www.coursera.org" target="_blank">Coursera</a>
            <a href="https://www.edx.org" target="_blank">edX</a>
            <a href="https://www.udemy.com" target="_blank">Udemy</a>
            <a href="https://www.khanacademy.org" target="_blank">Khan Academy</a>
            <a href="https://www.mit.edu/opencourseware" target="_blank">MIT OpenCourseWare</a>
        </div>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Submission Portal</h1>
        </div>

        <!-- Middle Navigation -->
        <div class="middle-nav">
            <div class="middle-nav-menu">
                <a href="UserDashboard.jsp">Dashboard</a>
                <a href="UserProjectManagement.jsp">Project Management</a>
                <a href="TaskCoordination.jsp">Task Coordination</a>
                <a href="progressTracker.jsp">Progress Tracking</a>
                <a href="SubmissionPortal.jsp">Submission Portal</a>
                <a href="#profile">Profile</a>
            </div>
        </div>

        <!-- Top Navigation -->
        <div class="top-nav">
            <a href="studentLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Submission and Feedback Sections -->
        <div class="submission-portal">
            <!-- File Upload Section -->
            <div class="submission-section">
                <h2>Upload Files for Review</h2>
                <form action="uploadSubmission" method="post" enctype="multipart/form-data">
                    <input type="file" name="submissionFile" required>
                    <button type="submit" class="upload-btn">Upload</button>
                </form>
            </div>

            <!-- Link Submission Section -->
            <div class="link-section">
                <h2>Submit Links</h2>
                <form action="/api/submissions/submitLink" method="post">
                    <input type="url" name="submissionLink" placeholder="Enter project link" required>
                    <button type="submit" class="submit-link-btn">Submit Link</button>
                </form>
            </div>

            <!-- Feedback and Grades Section -->
            <div class="feedback-section">
                <h2>View Feedback and Grades</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Project</th>
                            <th>Feedback</th>
                            <th>Grade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Final Project Report</td>
                            <td>Excellent work with minor improvements.</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Prototype Presentation</td>
                            <td>Good design but lacks details.</td>
                            <td>B+</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
