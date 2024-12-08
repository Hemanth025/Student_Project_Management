<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Group Project Management System - Home</title>
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

        .sidebar .educational-links {
            margin-top: 20px;
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
            position: relative;
            overflow: hidden;
        }

        .middle-nav-menu a:hover {
            background-color: rgba(255,255,255,0.2);
        }

        .middle-nav-menu a::before {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 3px;
            background-color: white;
            transform: scaleX(0);
            transition: transform 0.3s ease;
        }

        .middle-nav-menu a:hover::before {
            transform: scaleX(1);
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

        /* Project Description Styles */
        .project-description {
            flex-grow: 1;
            padding: 30px;
            margin: 20px;
        }

        .description-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        .description-table tr {
            border-bottom: 1px solid #e9ecef;
        }

        .description-table tr:last-child {
            border-bottom: none;
        }

        .description-table th, .description-table td {
            padding: 20px;
            text-align: left;
            vertical-align: top;
        }

        .description-table th {
            background-color: #f8f9fa;
            color: #2c3e50;
            font-weight: 600;
            width: 30%;
        }

        .description-table td {
            color: #34495e;
            line-height: 1.6;
        }

        .description-table tr:nth-child(even) {
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
        <!-- Header with Project Name -->
        <div class="header">
            <h1>Student Group Project Management System</h1>
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

        <!-- Top Navigation with Logout -->
        <div class="top-nav">
            <a href="studentLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Project Description -->
        <div class="project-description">
            <table class="description-table">
                <tr>
                    <th>Project Overview</th>
                    <td>
                        A comprehensive digital platform designed to streamline and enhance collaborative learning experiences for student group projects. Our system provides an integrated solution for project management, task coordination, and team collaboration.
                    </td>
                </tr>
                <tr>
                    <th>Key Features</th>
                    <td>
                        <ul>
                            <li>Real-time task allocation and tracking</li>
                            <li>Collaborative workspace with integrated communication tools</li>
                            <li>Progress monitoring and reporting</li>
                            <li>Submission portal for project deliverables</li>
                            <li>Comprehensive user profile management</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <th>Project Goals</th>
                    <td>
                        Our primary objectives are to:
                        <ul>
                            <li>Enhance student collaboration and teamwork</li>
                            <li>Provide transparent project tracking</li>
                            <li>Develop essential project management skills</li>
                            <li>Streamline academic group project workflows</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <th>Benefits</th>
                    <td>
                        <ul>
                            <li>Improved communication and coordination</li>
                            <li>Increased accountability</li>
                            <li>Efficient resource management</li>
                            <li>Enhanced learning experience</li>
                            <li>Preparation for professional collaboration</li>
                        </ul>
                    </td>
                </tr>
                <tr>
                    <th>Technical Architecture</th>
                    <td>
                        Built using modern web technologies including:
                        <ul>
                            <li>Java Server Pages (JSP)</li>
                            <li>Servlet Technology</li>
                            <li>MySQL Database</li>
                            <li>Responsive Design</li>
                            <li>Secure Authentication Mechanism</li>
                        </ul>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</body>
</html>