<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
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

        /* Profile Content */
        .profile-section {
            flex-grow: 1;
            padding: 30px;
            margin: 20px;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 10px;
        }

        .profile-section h2 {
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .profile-details {
            display: grid;
            grid-template-columns: 1fr 2fr;
            row-gap: 15px;
            column-gap: 10px;
            font-size: 1em;
        }

        .profile-details label {
            font-weight: bold;
            color: #2c3e50;
        }

        .profile-details span {
            color: #34495e;
            padding: 5px 10px;
            background-color: #ecf0f1;
            border-radius: 5px;
            display: inline-block;
            word-wrap: break-word;
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
            <h1>User Profile</h1>
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

        <!-- Profile Section -->
        <div class="profile-section">
            <h2>Profile Details</h2>
            <div class="profile-details">
                <label>Student ID:</label>
                <span>${student.student_id}</span>

                <label>Name:</label>
                <span>${student.student_name}</span>

                <label>Email:</label>
                <span>${student.student_email}</span>

                <label>Contact:</label>
                <span>${student.student_contact}</span>

                <label>Date of Birth:</label>
                <span>${student.student_dateofbirth}</span>

                <label>Gender:</label>
                <span>${student.student_gender}</span>

                <label>Location:</label>
                <span>${student.student_location}</span>
            </div>
        </div>
    </div>
</body>
</html>
