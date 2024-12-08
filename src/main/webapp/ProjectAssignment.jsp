<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Assignment</title>
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

        .section form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .section form input, 
        .section form textarea, 
        .section form select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .section form button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .section form button:hover {
            background-color: #2980b9;
        }

        .section form .remove-btn {
            background-color: #e74c3c;
        }

        .section form .remove-btn:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Project Assignment</h1>
        </div>

        <!-- Middle Navigation -->
        <div class="middle-nav">
            <div class="middle-nav-menu">
                <a href="AdminDashboard.jsp">Dashboard</a>
                <a href="ProjectAssignment.jsp" class="active">Project Assignment</a>
                <a href="MonitorProgress.jsp">Monitor Progress</a>
                <a href="ReviewSubmissions.jsp">Review Submissions</a>
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
            <!-- Section: Create New Group Project -->
            <div class="section">
                <h2>Create New Group Project</h2>
                <form action="CreateProjectController" method="post">
                    <input type="text" name="projectName" placeholder="Project Name" required>
                    <textarea name="projectDesc" rows="4" placeholder="Project Description" required></textarea>
                    <textarea name="milestones" rows="2" placeholder="Milestones (comma-separated)" required></textarea>
                    <input type="date" name="deadline" required>
                    <button type="submit">Create Project</button>
                </form>
            </div>

            <!-- Section: Assign Groups to Projects -->
            <div class="section">
                <h2>Assign Groups to Projects</h2>
                <form action="AssignProjectController" method="post">
                    <input type="number" name="groupId" placeholder="Group ID" required>
                    <input type="number" name="projectId" placeholder="Project ID" required>
                    <button type="submit">Assign Project</button>
                </form>
            </div>

            <!-- Section: Update Assignments -->
            <div class="section">
                <h2>Update Existing Project Assignments</h2>
                <form action="UpdateProjectController" method="post">
                    <input type="number" name="assignmentId" placeholder="Assignment ID" required>
                    <select name="updateField" required>
                        <option value="" disabled selected>-- Select Field to Update --</option>
                        <option value="projectName">Project Name</option>
                        <option value="description">Description</option>
                        <option value="milestones">Milestones</option>
                        <option value="deadline">Deadline</option>
                    </select>
                    <input type="text" name="newValue" placeholder="New Value" required>
                    <button type="submit">Update Assignment</button>
                </form>
            </div>

            <!-- Section: Remove Assignments -->
            <div class="section">
                <h2>Remove Project Assignment</h2>
                <form action="RemoveProjectController" method="post">
                    <input type="number" name="assignmentIdRemove" placeholder="Assignment ID" required>
                    <button type="submit" class="remove-btn">Remove Assignment</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
