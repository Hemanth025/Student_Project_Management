<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review Submissions</title>
    <link rel="stylesheet" href="AdminHome.css">
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

        /* Section Container */
        .sections-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            justify-content: center;
        }

        .section {
            flex: 1;
            min-width: 300px;
            max-width: 400px;
            padding: 20px;
            background: white;
            border-radius: 10px;
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
            margin-top: 10px;
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
            font-weight: bold;
        }

        .section table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .section table tr:hover {
            background-color: #f1f1f1;
        }

        .section form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .section form input,
        .section form textarea,
        .section form button {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .section form button {
            background-color: #3498db;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .section form button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Review Submissions</h1>
        </div>

        <!-- Middle Navigation -->
        <div class="middle-nav">
            <div class="middle-nav-menu">
                <a href="AdminDashboard.jsp">Dashboard</a>
                <a href="ProjectAssignment.jsp">Project Assignment</a>
                <a href="MonitorProgress.jsp">Monitor Progress</a>
                <a href="ReviewSubmissions.jsp" class="active">Review Submissions</a>
                <a href="GroupManagement.jsp">Group Management</a>
                <a href="ReportingAnalytics.jsp">Reporting & Analytics</a>
                <a href="AdminProfile.jsp">Profile</a>
            </div>
        </div>

        <!-- Top Navigation -->
        <div class="top-nav">
            <a href="adminLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Sections: Arranged Side-by-Side -->
        <div class="sections-container">
            <!-- Section: Download and Review Files -->
            <div class="section">
                <h2>Download Submitted Files</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Student Name</th>
                            <th>Project Name</th>
                            <th>File</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>John Doe</td>
                            <td>Website Development</td>
                            <td><a href="DownloadFileController?fileId=1">Download</a></td>
                        </tr>
                        <tr>
                            <td>Jane Smith</td>
                            <td>Database Management</td>
                            <td><a href="DownloadFileController?fileId=2">Download</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Section: Provide Feedback and Grades -->
            <div class="section">
                <h2>Provide Feedback & Grades</h2>
                <form action="SubmitFeedbackController" method="post">
                    <input type="text" name="studentName" placeholder="Student Name" required>
                    <textarea name="feedback" rows="4" placeholder="Feedback" required></textarea>
                    <input type="number" name="grade" placeholder="Grade (0-100)" required>
                    <button type="submit">Submit Feedback</button>
                </form>
            </div>

            <!-- Section: Send Messages -->
            <div class="section">
                <h2>Send Messages</h2>
                <form action="SendMessageController" method="post">
                    <input type="text" name="recipient" placeholder="Recipient (Group/Individual)" required>
                    <textarea name="messageContent" rows="4" placeholder="Write your message here..." required></textarea>
                    <button type="submit">Send Message</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
