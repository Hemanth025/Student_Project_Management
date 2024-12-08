<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Group Project Management System - Admin Home</title>
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

        /* Admin Dashboard Styles */
        .admin-dashboard {
            flex-grow: 1;
            padding: 30px;
            margin: 20px;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .dashboard-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .dashboard-card:hover {
            transform: translateY(-10px);
        }

        .dashboard-card h2 {
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .dashboard-card p {
            color: #34495e;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Header with Project Name -->
        <div class="header">
            <h1>Student Group Project Management System - Admin Panel</h1>
        </div>

        <!-- Middle Navigation -->
        <div class="middle-nav">
            <div class="middle-nav-menu">
                <a href="AdminDashboard.jsp">Dashboard</a>
                <a href="ProjectAssignment.jsp">Project Assignment</a>
                <a href="MonitorProgress.jsp">Monitor Progress</a>
                <a href="ReviewSubmissions.jsp">Review Submissions</a>
                <a href="GroupManagement.jsp">Group Management</a>
                <a href="ReportingAnalytics.jsp">Reporting & Analytics</a>
                <a href="AdminProfile.jsp">Profile</a>
            </div>
        </div>

        <!-- Top Navigation with Logout -->
        <div class="top-nav">
            <a href="adminLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Admin Dashboard -->
        <div class="admin-dashboard">
            <div class="dashboard-card">
                <h2>Dashboard Overview</h2>
                <p>Quick summary of system statistics and key metrics</p>
            </div>
            <div class="dashboard-card">
                <h2>Project Assignment</h2>
                <p>Manage and allocate projects to student groups</p>
            </div>
            <div class="dashboard-card">
                <h2>Progress Monitoring</h2>
                <p>Track and analyze project progress in real-time</p>
            </div>
            <div class="dashboard-card">
                <h2>Submission Review</h2>
                <p>Review and evaluate student project submissions</p>
            </div>
            <div class="dashboard-card">
                <h2>Group Management</h2>
                <p>Create, modify, and manage student project groups</p>
            </div>
            <div class="dashboard-card">
                <h2>Reporting & Analytics</h2>
                <p>Generate comprehensive reports and insights</p>
            </div>
        </div>
    </div>
</body>
</html>