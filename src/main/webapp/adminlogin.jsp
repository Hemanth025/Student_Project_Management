<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin/Teacher Login - Group Project Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f7f6;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .login-container {
            min-height: 100vh;
            display: flex;
            align-items: center;
        }
        .login-card {
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }
        .login-section {
            background-color: white;
            padding: 40px;
            border-top-left-radius: 15px;
            border-bottom-left-radius: 15px;
        }
        .role-section {
            background-color: #2c3e50;
            color: white;
            padding: 40px;
            border-top-right-radius: 15px;
            border-bottom-right-radius: 15px;
        }
        .btn-login {
            background-color: #3498db;
            color: white;
            transition: all 0.3s ease;
        }
        .btn-login:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container login-container">
        <div class="row w-100">
            <div class="col-md-8 mx-auto">
                <div class="row login-card">
                    <div class="col-md-6 login-section">
                        <h3 class="mb-4 text-center">Admin/Teacher Login</h3>
                        <form method="post" action="cheakadminlogin">
                            <div class="mb-3">
                				<label for="name" class="form-label">Enter Username:</label>
                				<input type="text" id="name" name="cname" required class="form-control" placeholder="Enter your username" />
           					</div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password:</label>
                                <input type="password" id="password" name="teacherPassword" class="form-control" placeholder="Enter your password" required />
                            </div>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-between">
                                <button type="submit" class="btn btn-login flex-grow-1 me-2">Login</button>
                                <button type="reset" class="btn btn-secondary flex-grow-1">Reset</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-6 role-section">
                        <h3 class="mb-4">Admin Dashboard Features</h3>
                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <i class="fas fa-users me-2"></i>Manage Student Groups
                            </li>
                            <li class="mb-2">
                                <i class="fas fa-tasks me-2"></i>Create and Assign Projects
                            </li>
                            <li class="mb-2">
                                <i class="fas fa-chart-pie me-2"></i>Monitor Project Progress
                            </li>
                            <li class="mb-2">
                                <i class="fas fa-clipboard-check me-2"></i>Evaluate Project Submissions
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</body>
</html>