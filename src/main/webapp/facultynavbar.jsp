<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot MVC SDP Project - Faculty</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        .sidebar {
            width: 220px;
            background-color: #000000;
            position: fixed;
            height: 100%;
            overflow: auto;
            text-align: center;
        }

        .sidebar img {
            width: 80%;
            margin: 20px 0;
        }

        .sidebar a {
            display: block;
            color: #ffffff;
            padding: 16px;
            text-decoration: none;
            font-size: 18px;
            transition: color 0.2s ease, background-color 0.2s ease;
        }

        .sidebar a:hover {
            background-color: #ff4d4d;
            color: #ffffff;
        }

        .content {
            margin-left: 240px;
            padding: 20px;
            transition: margin-left 0.3s ease;
        }

        /* Responsive Design */
        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .sidebar a {
                float: left;
                width: 100%;
            }
            .content {
                margin-left: 0;
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
</head>
<body>
    <div class="sidebar">
       <img src="https://as2.ftcdn.net/v2/jpg/04/14/58/63/1000_F_414586354_SOPKjxfnQdjSlok1YPUqs0l6OTzMpP57.jpg" alt="Logo" />
         <a href="faculty-dashboard">Dashboard</a>
        <a href="facultyhome">Home</a>
        <a href="addcourse">Add Courses</a>
          <a href="materials">materials</a>
            <a href="Assignments">Assignments</a>
        <a href="faculty-grades">Grading</a>
        <a href="faculty-schedule">Schedule</a>
        <a href="faculty-reports">Reports</a>
        <a href="faculty-settings">Settings</a>
		<a href="facultylogout">Logout</a>
    </div>

    <div class="content">
        <h1>Welcome, Faculty Member</h1>
        <p>Here you can manage your courses, grading, and other faculty-related tasks.</p>
        <!-- Additional content for the faculty page goes here -->
    </div>
</body>
</html>