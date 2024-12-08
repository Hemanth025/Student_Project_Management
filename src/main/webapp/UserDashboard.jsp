<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Student Group Project Management System</title>
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

        /* Dashboard Styles */
        .dashboard-content {
            display: flex;
            padding: 20px;
            gap: 20px;
        }

        .dashboard-section {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
            flex: 1;
        }

        .dashboard-section h2 {
            color: #2c3e50;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
            margin-bottom: 15px;
        }

        .project-list, .milestones-list, .notifications-list {
            list-style-type: none;
        }

        .project-item, .milestone-item, .notification-item {
            background-color: #f8f9fa;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: all 0.3s ease;
        }

        .project-item:hover, .milestone-item:hover, .notification-item:hover {
            background-color: #e9ecef;
            transform: translateX(5px);
        }

        .project-details, .milestone-details, .notification-details {
            flex-grow: 1;
        }

        .project-status, .milestone-status, .notification-status {
            font-weight: bold;
            padding: 5px 10px;
            border-radius: 5px;
        }

        .status-in-progress {
            background-color: #3498db;
            color: white;
        }

        .status-pending {
            background-color: #f39c12;
            color: white;
        }

        .status-completed {
            background-color: #2ecc71;
            color: white;
        }

        .milestone-deadline {
            color: #e74c3c;
            font-weight: bold;
        }

        .notification-unread {
            background-color: #3498db;
            color: white;
            border-radius: 50%;
            padding: 2px 8px;
            margin-left: 10px;
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
                <a href="UserProfile.jsp">Profile</a>
            </div>
        </div>

        <!-- Top Navigation with Logout -->
        <div class="top-nav">
            <a href="studentLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Dashboard Content -->
        <div class="dashboard-content">
            <!-- Assigned Group Projects -->
            <div class="dashboard-section">
                <h2>Assigned Group Projects</h2>
                <ul class="project-list">
                    <li class="project-item">
                        <div class="project-details">
                            <strong>Web Development Project</strong>
                            <p>Software Engineering Course</p>
                        </div>
                        <span class="project-status status-in-progress">In Progress</span>
                    </li>
                    <li class="project-item">
                        <div class="project-details">
                            <strong>Machine Learning Research</strong>
                            <p>AI and Data Science</p>
                        </div>
                        <span class="project-status status-pending">Pending</span>
                    </li>
                    <li class="project-item">
                        <div class="project-details">
                            <strong>Mobile App Development</strong>
                            <p>Mobile Computing Course</p>
                        </div>
                        <span class="project-status status-completed">Completed</span>
                    </li>
                </ul>
            </div>

            <!-- Project Milestones -->
            <div class="dashboard-section">
                <h2>Project Milestones</h2>
                <ul class="milestones-list">
                    <li class="milestone-item">
                        <div class="milestone-details">
                            <strong>Web Dev Project Proposal</strong>
                            <p>Submission of Initial Project Plan</p>
                        </div>
                        <span class="milestone-deadline">Due: 15 Dec 2024</span>
                    </li>
                    <li class="milestone-item">
                        <div class="milestone-details">
                            <strong>ML Research Methodology</strong>
                            <p>Research Design Finalization</p>
                        </div>
                        <span class="milestone-deadline">Due: 20 Dec 2024</span>
                    </li>
                    <li class="milestone-item">
                        <div class="milestone-details">
                            <strong>Mobile App Prototype</strong>
                            <p>Initial App Design Review</p>
                        </div>
                        <span class="milestone-deadline">Due: 25 Dec 2024</span>
                    </li>
                </ul>
            </div>

            <!-- Notifications -->
            <div class="dashboard-section">
                <h2>Notifications</h2>
                <ul class="notifications-list">
                    <li class="notification-item">
                        <div class="notification-details">
                            <strong>Admin Message</strong>
                            <p>Project Submission Guidelines Updated</p>
                        </div>
                        <span class="notification-unread">1</span>
                    </li>
                    <li class="notification-item">
                        <div class="notification-details">
                            <strong>Feedback Received</strong>
                            <p>Web Development Project Initial Draft</p>
                        </div>
                        <span class="notification-unread">2</span>
                    </li>
                    <li class="notification-item">
                        <div class="notification-details">
                            <strong>Deadline Reminder</strong>
                            <p>Upcoming Project Milestone</p>
                        </div>
                        <span class="notification-unread">3</span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>