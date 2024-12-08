<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
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

        /* Admin Dashboard Table Styles */
        .admin-dashboard {
            flex-grow: 1;
            padding: 30px;
        }

        .dashboard-table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        .dashboard-table th, .dashboard-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #e9ecef;
        }

        .dashboard-table th {
            background-color: #f8f9fa;
            color: #2c3e50;
            font-weight: 600;
        }

        .dashboard-table td {
            color: #34495e;
        }

        .dashboard-table tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Admin Dashboard</h1>
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

        <!-- Top Navigation -->
        <div class="top-nav">
            <a href="adminlogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Admin Dashboard Content -->
        <div class="admin-dashboard">
            <h2>List of Student Groups</h2>
            <table class="dashboard-table">
                <thead>
                    <tr>
                        <th>Group ID</th>
                        <th>Group Name</th>
                        <th>Members</th>
                        <th>Project Title</th>
                    </tr>
                </thead>
                <tbody>
                    <%-- Add dynamic rows here when integrating backend --%>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
