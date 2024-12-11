<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login Failed</title>
    <style>
        /* Basic styling for a centered, user-friendly error message */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9; /* Light gray background */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .message-container {
            text-align: center;
            background-color: #fff; /* White background for the message box */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2); /* Soft shadow */
            max-width: 400px;
            width: 100%;
        }

        .error-message {
            color: #c0392b; /* Red color for error */
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        a {
            color: #3498db; /* Blue color for link */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="message-container">
        <!-- Display the error message -->
        <p class="error-message"><c:out value="${message}" /></p>

        <!-- Link to retry login -->
        <a href="adminlogin">Try Again</a>
    </div>
</body>
</html>