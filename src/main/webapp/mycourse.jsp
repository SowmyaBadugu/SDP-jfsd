<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student - My Courses</title>
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

        .flashcard-container {
            display: grid;
            grid-template-columns: repeat(5, 1fr);
            gap: 20px;
            margin-top: 20px;
        }

        .flashcard {
            background-color: white;
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .flashcard img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }

        .flashcard .price {
            font-weight: bold;
            color: #4CAF50;
            margin-top: 10px;
        }

        .flashcard h3 {
            margin: 10px 0;
        }

        .flashcard p {
            font-size: 14px;
            color: #666;
        }
    </style>
    <script>
        // Function to load and display courses from local storage
        function loadCourses() {
            const courses = JSON.parse(localStorage.getItem("courses")) || [];
            const courseList = document.getElementById("courseList");

            if (courses.length === 0) {
                courseList.innerHTML = "<p>No courses available to register.</p>";
            } else {
                courses.forEach((course) => {
                    const flashcard = document.createElement("div");
                    flashcard.classList.add("flashcard");

                    flashcard.innerHTML = `
                        <img src="${course.image}" alt="${course.name}">
                        <h3>${course.name}</h3>
                        <p>${course.description}</p>
                        <p class="price">$${course.price}</p>
                    `;

                    courseList.appendChild(flashcard);
                });
            }
        }
    </script>
</head>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>
<body onload="loadCourses()">
  

    <div class="content">
        <h1>My Courses</h1>
        <div id="courseList" class="flashcard-container">
            <!-- Courses will be dynamically loaded here -->
        </div>
    </div>
</body>
</html>
