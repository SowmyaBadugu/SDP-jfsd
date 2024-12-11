<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>
    <style>
        /* Body Styling */
        body {
            display: flex;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        /* Left Sidebar Navbar Styling */
        .navbar {
            width: 220px;
            background-color: #343a40;
            color: white;
            position: fixed;
            height: 100vh;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 15px;
            font-size: 18px;
            border-bottom: 1px solid #555;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #007bff;
            border-radius: 5px;
        }

        /* Content Area Styling */
        .content {
            margin-left: 240px;
            padding: 40px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            width: calc(100% - 240px);
        }

        /* Form Container Styling */
        .form-container {
            width: 100%;
            max-width: 400px;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            color: #555;
        }

        input[type="text"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 18px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <%@include file="facultynavbar.jsp" %>
    </div>

    <!-- Main Content Area -->
    <div class="content">
        <div class="form-container">
            <h2>Add New Course</h2>
            <form action="insertcourse" method="post">
                <!-- Course Name -->
                <label for="cname">Course Name:</label>
                <input type="text" id="cname" name="cname" required>
                
                <!-- Course Description -->
                <label for="cdescription">Course Description:</label>
                <textarea id="cdescription" name="cdescription" required rows="4"></textarea>
                
                <!-- Course Price -->
                <label for="cprice">Course Price:</label>
                <input type="number" id="cprice" name="cprice" required step="0.01">
                
                <input type="submit" value="Add Course">
            </form>
        </div>
    </div>
</body>
</html>
