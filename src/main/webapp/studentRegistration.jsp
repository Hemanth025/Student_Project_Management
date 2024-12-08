<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration - Project Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #1a73e8;
            --secondary-color: #34495e;
            --accent-color: #4caf50;
            --background-color: #f4f6f9;
            --text-color: #2c3e50;
            --input-border-color: #e0e4e8;
        }

        * {
            box-sizing: border-box;
            transition: all 0.3s ease;
        }

        body {
            background-color: var(--background-color);
            font-family: 'Inter', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
            color: var(--text-color);
            line-height: 1.6;
        }

        .registration-container {
            background-color: white;
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.08), 0 5px 15px rgba(0,0,0,0.06);
            padding: 50px;
            max-width: 900px;
            width: 100%;
            border: 1px solid var(--input-border-color);
        }

        .registration-container h2 {
            color: var(--primary-color);
            font-weight: 700;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .form-label {
            color: var(--secondary-color);
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .form-control, .form-select {
            border: 2px solid var(--input-border-color);
            border-radius: 10px;
            padding: 12px 15px;
            color: var(--text-color);
            font-size: 0.95rem;
        }

        .form-control:focus, .form-select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.25rem rgba(26, 115, 232, 0.25);
            outline: none;
        }

        .btn-register {
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 10px;
            padding: 12px 30px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .btn-register:hover {
            background-color: #1557b0;
            transform: translateY(-3px);
            box-shadow: 0 6px 8px rgba(0,0,0,0.15);
        }

        .btn-secondary {
            background-color: var(--secondary-color);
            color: white;
            border-radius: 10px;
            padding: 12px 30px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn-secondary:hover {
            background-color: #2c3e50;
            transform: translateY(-3px);
        }

        .login-link {
            color: var(--accent-color);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.3s ease;
        }

        .login-link:hover {
            color: var(--primary-color);
            text-decoration: underline;
        }

        @media (max-width: 768px) {
            .registration-container {
                padding: 30px;
                margin: 20px;
            }
        }
  /* ... Previous CSS remains the same ... */
        .invalid-feedback {
            color: #dc3545;
            font-size: 0.9rem;
            margin-top: 0.25rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="registration-container">
            <h2 class="text-center mb-4">Student Registration</h2>
            <form id="registrationForm" method="post" action="insertStudent" novalidate>
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="student_id" class="form-label">Student ID</label>
                        <input type="text" class="form-control" id="student_id" name="student_id" required>
                        <div class="invalid-feedback">Student ID is required</div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="student_name" class="form-label">Full Name</label>
                        <input type="text" class="form-control" id="student_name" name="student_name" required>
                        <div class="invalid-feedback">Full Name is required</div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="student_email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="student_email" name="student_email" required>
                        <div class="invalid-feedback">Please enter a valid email address</div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="student_contact" class="form-label">Contact Number</label>
                        <input type="tel" class="form-control" id="student_contact" name="student_contact" required>
                        <div class="invalid-feedback">Contact number is required</div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="student_dateofbirth" class="form-label">Date of Birth</label>
                        <input type="date" class="form-control" id="dateofbirth" name="student_dateofbirth" required>
                        <div class="invalid-feedback">Please enter a valid date of birth</div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="student_gender" class="form-label">Gender</label>
                        <select class="form-select" id="student_gender" name="student_gender" required>
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                        <div class="invalid-feedback">Please select a gender</div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="student_location" class="form-label">Location</label>
                        <input type="text" class="form-control" id="student_location" name="student_location" required>
                        <div class="invalid-feedback">Location is required</div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="student_password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="student_password" required>
                        <div class="invalid-feedback"></div>
                    </div>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-register btn-lg me-2">Register</button>
                    <button type="reset" class="btn btn-secondary btn-lg">Reset</button>
                </div>

                <div class="text-center mt-4">
                    <p>Already a user? <a href="studentLogin.jsp" class="login-link">Login</a></p>
                </div>
            </form>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        (function () {
            'use strict'

            var form = document.getElementById('registrationForm')

            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)

            var dobInput = document.getElementById('dateofbirth')
            dobInput.addEventListener('change', function() {
                var dob = new Date(this.value)
                var today = new Date()
                var age = today.getFullYear() - dob.getFullYear()
                var m = today.getMonth() - dob.getMonth()
                if (m < 0 || (m === 0 && today.getDate() < dob.getDate())) {
                    age--
                }
                if (age < 15) {
                    this.setCustomValidity('You must be at least 15 years old.')
                } else {
                    this.setCustomValidity('')
                }
            })

            var passwordInput = document.getElementById('password')
            passwordInput.addEventListener('input', function() {
                var password = this.value
                var strength = 0
                if (password.match(/[a-z]+/)) strength++
                if (password.match(/[A-Z]+/)) strength++
                if (password.match(/[0-9]+/)) strength++
                if (password.match(/[$@#&!]+/)) strength++
                if (password.length >= 8) strength++

                var feedback = this.nextElementSibling
                if (strength < 3) {
                    this.setCustomValidity('Password is too weak')
                    feedback.textContent = 'Password should be at least 8 characters long and contain uppercase, lowercase, number, and special character.'
                } else {
                    this.setCustomValidity('')
                    feedback.textContent = ''
                }
            })
        })()
    </script>
</body>
</html>