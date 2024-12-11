<%@page import="com.klef.jfsd.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
<style>
    /* General styling */
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    /* Navbar positioning */
    .navbar {
        width: 100%;
    }

    /* Main content layout */
    .main-content {
        display: flex;
        width: 80%;
        margin-top: 20px;
        padding: 20px;
        background-color: #ffffff;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    /* Left image section */
    .image-section {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .image-section img {
        max-width: 60%;
        height: auto;
        border-radius: 10px;
    }

    /* Right text section */
    .text-section {
        flex: 1;
        padding-left: 20px;
    }

    .text-section h2 {
        color: #333;
        margin-top: 0;
    }

    .text-section p {
        color: #555;
        line-height: 1.6;
    }
</style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <%@include file="facultynavbar.jsp" %>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <!-- Left Image Section -->
        <div class="image-section">
            <img src="https://img.favpng.com/24/0/18/teacher-education-school-learning-college-png-favpng-DnJBKikFJUvsXCAA8Az3TQy9c.jpg" alt="Course Management Image">
        </div>

        <!-- Right Text Section -->
        <div class="text-section">
            <h2>Welcome to Faculty Web Page</h2>
            <p>
                Here, you can seamlessly manage your courses, upload essential course materials, and create engaging assignments for students.
                Our platform enables you to add new courses, update existing ones, and share resources that enhance the learning experience. 
            </p>
            <p>
                Get started by adding your course content, setting up assignments, and uploading lecture materials. With this platform, you’re empowered to make 
                the learning journey for your students more accessible and interactive.
            </p>
        </div>
    </div>
</body>
</html>
