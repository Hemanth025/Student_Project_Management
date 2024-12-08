<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Group Project Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #1a5f7a;
            --secondary-color: #159895;
            --accent-color: #57c5b6;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar {
            background-color: var(--primary-color);
        }

        .content {
            flex: 1;
            padding: 40px 0;
        }

        .feature-card {
            border: none;
            border-radius: 10px;
            margin-bottom: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }

        .feature-card:hover {
            transform: translateY(-5px);
        }

        .footer {
            background-color: var(--primary-color);
            color: white;
            padding: 20px 0;
        }

        .footer-links a {
            color: rgba(255,255,255,0.7);
            margin: 0 10px;
            text-decoration: none;
            transition: color 0.3s;
        }

        .social-icons a {
            color: rgba(255,255,255,0.7);
            margin: 0 10px;
            font-size: 20px;
            transition: color 0.3s;
        }

        .social-icons a:hover {
            color: white;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Student Group Project Management System</a>
            <div class="navbar-nav ms-auto">
                <a class="nav-link" href="studentLogin.jsp">Student Login</a>
                <a class="nav-link" href="studentRegistration.jsp">Register</a>
                <a class="nav-link" href="adminlogin.jsp">Admin Login</a>
            </div>
        </div>
    </nav>

    <div class="content container">
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card feature-card">
                    <div class="card-body">
                        <h5 class="card-title">Project Creation</h5>
                        <p class="card-text">Easily create and manage group projects with comprehensive tools.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card feature-card">
                    <div class="card-body">
                        <h5 class="card-title">Team Collaboration</h5>
                        <p class="card-text">Facilitate seamless communication and collaboration among team members.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card feature-card">
                    <div class="card-body">
                        <h5 class="card-title">Progress Tracking</h5>
                        <p class="card-text">Monitor project milestones, deadlines, and individual contributions.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title text-center mb-4">About Our System</h3>
                        <p class="card-text text-center">
                            Our Student Group Project Management System is designed to streamline 
                            the process of managing academic group projects. From project creation 
                            to final submission, we provide tools that enhance collaboration, 
                            communication, and productivity.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer text-center">
        <div class="footer-links mb-3">
            <a href="privacy-policy.jsp">Privacy Policy</a>
            <a href="terms-of-service.jsp">Terms of Service</a>
        </div>
        <div class="social-icons mb-3">
            <a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a>
            <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
            <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
        </div>
        <p class="mt-3 small">&copy; 2024 Student Group Project Management System</p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>