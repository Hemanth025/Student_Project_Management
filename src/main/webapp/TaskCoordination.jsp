<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Management - Student Group Project Management System</title>
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

        /* Project Management Content Styles */
        .project-management-content {
            display: flex;
            padding: 20px;
            gap: 20px;
        }

        .project-section {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
        }

        /* Project Details Section */
        .project-details {
            flex: 2;
        }

        .project-details h2 {
            color: #2c3e50;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
            margin-bottom: 15px;
        }

        .project-info {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        .project-info h3 {
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .project-info p {
            color: #34495e;
            line-height: 1.6;
        }

        /* Group Members Section */
        .group-members {
            flex: 1;
        }

        .member-list {
            list-style-type: none;
        }

        .member-item {
            display: flex;
            align-items: center;
            background-color: #f8f9fa;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .member-item:hover {
            background-color: #e9ecef;
            transform: translateX(5px);
        }

        .member-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 15px;
            background-color: #3498db;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }

        .member-details {
            flex-grow: 1;
        }

        .member-role {
            color: #7f8c8d;
            font-size: 0.9em;
        }

        /* Collaboration Tools Section */
        .collaboration-tools {
            flex: 2;
        }

        .message-board {
            height: 400px;
            border: 1px solid #e9ecef;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
        }

        .message-header {
            background-color: #3498db;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .messages-container {
            flex-grow: 1;
            overflow-y: auto;
            padding: 15px;
        }

        .message-item {
            background-color: #f8f9fa;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
        }

        .message-input {
            display: flex;
            padding: 10px;
            background-color: #f8f9fa;
        }

        .message-input input {
            flex-grow: 1;
            padding: 10px;
            border: 1px solid #e9ecef;
            border-radius: 5px;
            margin-right: 10px;
        }

        .message-input button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .message-input button:hover {
            background-color: #2980b9;
        }

        /* Task Coordination Styles */
        .task-coordination-content {
            display: flex;
            gap: 20px;
            padding: 20px;
        }

        .task-section {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            padding: 20px;
        }

        .task-assignment {
            flex: 2;
        }

        .task-tracking {
            flex: 1;
        }

        .task-list {
            list-style-type: none;
        }

        .task-item {
            background-color: #f8f9fa;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            transition: all 0.3s ease;
        }

        .task-item:hover {
            background-color: #e9ecef;
            transform: translateX(5px);
        }

        .task-status {
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 0.9em;
            font-weight: bold;
        }

        .status-pending {
            background-color: #f39c12;
            color: white;
        }

        .status-in-progress {
            background-color: #3498db;
            color: white;
        }

        .status-completed {
            background-color: #2ecc71;
            color: white;
        }

        .task-submission {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 5px;
        }

        .task-submission .file-upload {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        .task-submission input[type="file"] {
            display: none;
        }

        .upload-button {
            background-color: #3498db;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .upload-button:hover {
            background-color: #2980b9;
        }

        .submit-button {
            background-color: #2ecc71;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-button:hover {
            background-color: #27ae60;
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

        <!-- Task Coordination Content -->
        <div class="task-coordination-content">
            <!-- Task Assignment Section -->
            <div class="task-section task-assignment">
                <h2>Task Assignment</h2>
                <ul class="task-list">
                    <li class="task-item">
                        <div>
                            <strong>Frontend Design</strong>
                            <p>Create responsive UI components</p>
                        </div>
                        <div>
                            <span>Assigned to: Dheeraj</span>
                            <span class="task-status status-in-progress">In Progress</span>
                        </div>
                    </li>
                    <li class="task-item">
                        <div>
                            <strong>Backend Authentication</strong>
                            <p>Implement secure user login system</p>
                        </div>
                        <div>
                            <span>Assigned to: Hemanth</span>
                            <span class="task-status status-pending">Pending</span>
                        </div>
                    </li>
                    <li class="task-item">
                        <div>
                            <strong>Database Design</strong>
                            <p>Create database schema and relationships</p>
                        </div>
                        <div>
                            <span>Assigned to: Shanmukh</span>
                            <span class="task-status status-completed">Completed</span>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- Task Tracking and Submission Section -->
            <div class="task-section task-tracking">
                <h2>Task Submission</h2>
                <div class="task-submission">
                    <div class="file-upload">
                        <input type="file" id="task-file" name="task-file">
                        <label for="task-file" class="upload-button">Choose File</label>
                        <span id="file-chosen">No file chosen</span>
                    </div>
                    <select class="form-control" style="width: 100%; padding: 10px; margin-bottom: 10px;">
                        <option>Select Task</option>
                        <option>Frontend Design</option>
                        <option>Backend Authentication</option>
                        <option>Database Design</option>
                    </select>
                    <button class="submit-button">Submit Task</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Simple file upload name display script
        const fileInput = document.getElementById('task-file');
        const fileChosen = document.getElementById('file-chosen');

        fileInput.addEventListener('change', function(){
            if(this.files && this.files.length > 0){
                fileChosen.textContent = this.files[0].name;
            } else {
                fileChosen.textContent = 'No file chosen';
            }
        });
    </script>
</body>
</html>