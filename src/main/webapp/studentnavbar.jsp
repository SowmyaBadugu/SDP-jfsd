<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot MVC SDP Project</title>
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
        <img src="https://www.kindpng.com/picc/m/27-271470_logo-of-graduate-students-hd-png-download.png" alt="Logo"> <!-- Replace 'logo.jpg' with the actual logo image source -->
        <a href="studenthome">Home</a>
        <a href="studentprofile">My Profile</a>
        <a href="viewcourse">RegisterCourse</a>
        <a href="viewregisteredcourse">My Course</a>
        <a href="mymaterials">My Materials</a>
        <a href="Assignments">Assignments</a>
         <a href="dashboard">Dashboard</a>
        <a href="studentlogout">Logout</a>
    </div>

    <div class="content">
       
        <!-- Add any additional content here -->
    </div>
</body>
</html>