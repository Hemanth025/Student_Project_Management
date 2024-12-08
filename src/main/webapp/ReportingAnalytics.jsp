<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporting & Analytics</title>
    <link rel="stylesheet" href="AdminHome.css">
    <style>
        /* General Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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

        /* Sections */
        .sections-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
            padding: 20px;
        }

        .section {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .section h2 {
            color: #2c3e50;
            margin-bottom: 15px;
            text-align: center;
        }

        .section table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 15px;
        }

        .section table th,
        .section table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        .section table th {
            background-color: #f8f9fa;
            color: #2c3e50;
        }

        .section table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .section table tr:hover {
            background-color: #f1f1f1;
        }

        .generate-btn {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .generate-btn:hover {
            background-color: #2980b9;
        }

        .chart-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Reporting & Analytics</h1>
        </div>

        <!-- Middle Navigation -->
        <div class="middle-nav">
            <div class="middle-nav-menu">
                <a href="AdminDashboard.jsp">Dashboard</a>
                <a href="ProjectAssignment.jsp">Project Assignment</a>
                <a href="MonitorProgress.jsp">Monitor Progress</a>
                <a href="ReviewSubmissions.jsp">Review Submissions</a>
                <a href="GroupManagement.jsp">Group Management</a>
                <a href="ReportingAnalytics.jsp" class="active">Reporting & Analytics</a>
                <a href="AdminProfile.jsp">Profile</a>
            </div>
        </div>

        <!-- Top Navigation -->
        <div class="top-nav">
            <a href="adminLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Sections -->
        <div class="sections-container">
            <!-- Section: Generate Reports -->
            <div class="section">
                <h2>Generate Reports</h2>
                <form action="GenerateReportController" method="post">
                    <label for="groupName">Group Name:</label>
                    <select name="groupName" id="groupName" required>
                        <option value="" disabled selected>Select a group</option>
                        <option value="Group Alpha">Group Alpha</option>
                        <option value="Group Beta">Group Beta</option>
                    </select>
                    <button type="submit" class="generate-btn">Generate Report</button>
                </form>
            </div>

            <!-- Section: Analyze Trends -->
            <div class="section">
                <h2>Analyze Trends</h2>
                <div class="chart-container">
                    <!-- Placeholder for charts -->
                    <img src="images/trend-chart-placeholder.png" alt="Trend Chart" style="max-width: 100%; height: auto;">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
