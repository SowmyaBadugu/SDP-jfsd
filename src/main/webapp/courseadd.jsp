<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background */
        }

        .container {
            display: flex;
            flex-direction: column; /* Align items in a column */
            align-items: center; /* Center items horizontally */
            justify-content: center; /* Center items vertically */
            padding: 20px;
            background-color: #000; /* Black background for form */
            color: #fff; /* White text */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); /* Shadow for depth */
            width: 400px; /* Set a fixed width for the form */
            margin: 20px auto; /* Center container with margin */
            text-align: left; /* Align text to the left */
        }

        h3 {
            color: #ff4d4d; /* Red color for the heading */
            text-align: center; /* Center heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        label {
            margin-top: 10px; /* Space between label and input */
            display: block; /* Labels on their own lines */
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        input[type="number"],
        select {
            width: 90%; /* Full width with a bit of margin */
            padding: 10px; /* Padding inside inputs */
            margin: 10px auto; /* Center alignment */
            border: 1px solid #ccc; /* Light border */
            border-radius: 5px; /* Rounded corners */
            box-sizing: border-box; /* Include padding and border in width */
        }

        input[type="radio"] {
            margin: 0 5px; /* Space around radio buttons */
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #ff4d4d; /* Red buttons */
            color: #fff; /* White text */
            border: none; /* No border */
            padding: 10px 15px; /* Padding for buttons */
            border-radius: 5px; /* Rounded corners for buttons */
            cursor: pointer; /* Pointer cursor on hover */
            margin: 10px; /* Space between buttons */
            transition: background-color 0.3s ease; /* Smooth background transition */
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #cc0000; /* Darker red on hover */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3>Add New Course</h3>
    <div class="container">
        <form method="post" action="addcourse">
            <label>Course Name</label>
            <input type="text" name="course_name" required />

            <label>Course Description</label>
            <textarea name="course_description" required></textarea>

            <input type="submit" value="Add Course" />
        </form>
    </div>
</body>
</html>