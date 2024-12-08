<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Progress Tracker</title>
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

        /* Progress Tracker Table Styles */
        .progress-tracker {
            flex-grow: 1;
            padding: 30px;
            margin: 20px;
        }

        .tracker-table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        .tracker-table th, .tracker-table td {
            padding: 20px;
            text-align: left;
            vertical-align: middle;
            border-bottom: 1px solid #e9ecef;
        }

        .tracker-table th {
            background-color: #f8f9fa;
            color: #2c3e50;
            font-weight: 600;
        }

        .tracker-table td {
            color: #34495e;
            line-height: 1.6;
        }

        .tracker-table tr:nth-child(even) {
            background-color: #f4f6f9;
        }

        .status {
            font-weight: bold;
            color: #27ae60;
        }

        .status.pending {
            color: #e67e22;
        }

        .status.delayed {
            color: #e74c3c;
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
            <h1>Progress Tracker</h1>
        </div>

        <!-- Middle Navigation -->
        <div class="middle-nav">
            <div class="middle-nav-menu">
                <a href="UserDashboard.jsp">Dashboard</a>
                <a href="UserProjectManagement.jsp">Project Management</a>
                <a href="TaskCoordination.jsp">Task Coordination</a>
                <a href="progressTracker.jsp">Progress Tracking</a>
                <a href="SubmissionPortal.jsp">Submission Portal</a>
                <a href="userprofile.jsp">Profile</a>
            </div>
        </div>

        <!-- Top Navigation -->
        <div class="top-nav">
            <a href="studentLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Progress Tracker Table -->
        <div class="progress-tracker">
            <table class="tracker-table">
                <thead>
                    <tr>
                        <th>Milestone</th>
                        <th>Deadline</th>
                        <th>Completion Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Finalize Project Idea</td>
                        <td>2024-12-10</td>
                        <td><span class="status">Completed</span></td>
                    </tr>
                    <tr>
                        <td>Submit Proposal</td>
                        <td>2024-12-15</td>
                        <td><span class="status pending">Pending</span></td>
                    </tr>
                    <tr>
                        <td>First Prototype</td>
                        <td>2024-12-20</td>
                        <td><span class="status delayed">Delayed</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
