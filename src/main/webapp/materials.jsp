<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Materials - Upload</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }
        .navbar {
            width: 200px;
            background-color: #343a40;
            color: #fff;
            padding: 20px;
            position: fixed;
            left: 0;
            top: 0;
            bottom: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            margin: 10px 0;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        p {
            font-size: 16px;
            color: #555;
            margin-bottom: 20px;
        }

        label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"], input[type="file"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            background-color: #f9f9f9;
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: black;
        }

        .success-message {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            margin-top: 20px;
            border-radius: 4px;
        }

        .error-message {
            background-color: #f44336;
            color: white;
            padding: 10px;
            margin-top: 20px;
            border-radius: 4px;
        }

    </style>
</head>
<div class="navbar">
    <%@include file="facultynavbar.jsp" %>
</div>
<body>
    <div class="container">
        

        <!-- Display Success or Error Message -->
        <% 
            String message = (String) request.getAttribute("message");
            if (message != null) {
                if (message.contains("successfully")) {
        %>
            <div class="success-message"><%= message %></div>
        <% 
                } else {
        %>
            <div class="error-message"><%= message %></div>
        <% 
                }
            }
        %>

        <!-- File Upload Form -->
        <form action="/uploadmaterial" method="POST" enctype="multipart/form-data">
            <!-- Course Name -->
            <label for="courseName">Course Name:</label><br>
            <input type="text" id="courseName" name="courseName" required><br>

            <!-- Material File -->
            <label for="file">Upload Material (PDF only):</label><br>
            <input type="file" id="file" name="file" accept="application/pdf" required><br>

            <!-- Submit Button -->
            <input type="submit" value="Upload Material">
        </form>
        <a href="/mymaterials">Go to My Material</a>
    </div>
</body>
</html>
