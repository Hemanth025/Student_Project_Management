<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
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

        /* Profile Section */
        .profile-section {
            display: flex;
            flex-direction: column;
            gap: 20px;
            padding: 20px;
        }

        .profile-section h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 15px;
        }

        .profile-form {
            display: flex;
            flex-direction: column;
            gap: 15px;
            max-width: 600px;
            margin: auto;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
        }

        .profile-form input,
        .profile-form select,
        .profile-form textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
        }

        .profile-form button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .profile-form button:hover {
            background-color: #2980b9;
        }

        .profile-form .remove-btn {
            background-color: #e74c3c;
        }

        .profile-form .remove-btn:hover {
            background-color: #c0392b;
        }

        .profile-details {
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
        }

        .profile-details table {
            width: 100%;
            border-collapse: collapse;
        }

        .profile-details table th,
        .profile-details table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        .profile-details table th {
            background-color: #f8f9fa;
        }

        .profile-details table tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="main-content">
        <!-- Header -->
        <div class="header">
            <h1>Profile</h1>
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
                <a href="AdminProfile.jsp" class="active">Profile</a>
            </div>
        </div>

        <!-- Top Navigation -->
        <div class="top-nav">
            <a href="adminLogin.jsp" class="logout-btn">Logout</a>
        </div>

        <!-- Profile Section -->
        <div class="profile-section">
            <h2>View and Update Your Profile</h2>

            <!-- Profile Details -->
            <div class="profile-details">
                <h3>Personal Details</h3>
                <table>
                    <tr>
                        <th>Name</th>
                        <td>John Doe</td>
                    </tr>
                    <tr>
                        <th>Email Address</th>
                        <td>johndoe@example.com</td>
                    </tr>
                    <tr>
                        <th>Phone Number</th>
                        <td>+1234567890</td>
                    </tr>
                    <tr>
                        <th>Role</th>
                        <td>Admin</td>
                    </tr>
                    <tr>
                        <th>Courses</th>
                        <td>Computer Science</td>
                    </tr>
                </table>
            </div>

            <!-- Profile Update Form -->
            <div class="profile-form">
                <h3>Update Your Details</h3>
                <form action="UpdateProfileController" method="post">
                    <input type="text" name="firstName" value="John" placeholder="First Name" required>
                    <input type="text" name="lastName" value="Doe" placeholder="Last Name" required>
                    <input type="email" name="email" value="johndoe@example.com" placeholder="Email Address" required>
                    <input type="tel" name="phone" value="+1234567890" placeholder="Phone Number" required>
                    <input type="password" name="password" placeholder="New Password">
                    <button type="submit">Update Profile</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
