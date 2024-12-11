<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* Background and body styling */
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #e0e0e0, #ffffff);
        margin: 0;
        padding: 0;
        color: #333;
    }

    /* Main container styling */
    .container {
        max-width: 1000px;
        margin: 0 auto;
        padding: 20px;
        text-align: center;
    }

    /* Hero image styling */
    .hero-image {
        width: 80%;
        height: 400px;
        background-image: url('https://thumbs.dreamstime.com/b/boy-studying-online-education-home-cartoon-vector-illustration-student-workplace-desktop-computer-doing-homework-surfing-187238204.jpg');
        background-size: cover;
        background-position: center;
        border-radius: 20px;
        margin: 0 auto 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
    }

    /* Welcome Message styling */


    /* Info section styling */
    .info-section {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 20px;
        text-align: left;
        color: #555;
    }

    .info-section h2 {
        font-size: 26px;
        color: #4a90e2;
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .info-section p {
        font-size: 16px;
        line-height: 1.6;
        color: #666;
        margin-top: 10px;
    }

    /* Icon styling */
    .info-section h2:before {
        content: '📘';
        font-size: 28px;
    }

    /* Card container styling */
    .card-container {
        display: flex;
        gap: 20px;
        justify-content: center;
        margin-top: 20px;
        flex-wrap: wrap;
    }

    /* Card styling */
    .card {
        background-color: #ffffff;
        width: 300px;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .card img {
        width: 100%;
        height: auto;
        border-radius: 10px;
    }

    .card h3 {
        font-size: 22px;
        color: #4a90e2;
        margin: 15px 0;
    }

    .card p {
        font-size: 16px;
        color: #666;
        margin: 10px 0 20px;
    }

    .card a {
        display: inline-block;
        color: #ffffff;
        background-color: #4a90e2;
        padding: 10px 15px;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s;
    }

    .card a:hover {
        background-color: #357abd;
    }
</style>
</head>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>
<body>

<!-- Main Container -->
<div class="container">
    <!-- Hero Image -->
    <div class="hero-image"></div>


    <!-- Information Section -->
    <div class="info-section">
        <h2>Explore Your Courses</h2>
        <p>Delve into a range of courses designed to enhance your skills and knowledge. With easy access to materials, assignments, and interactive sessions, our platform ensures you have everything you need to succeed in your academic journey.</p>
    </div>
</div>

<!-- Card Container for Additional Sections -->
<div class="card-container">
    <!-- My Courses Card -->
    <div class="card">
        <img src="https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2020/04/01170800/Free-Online-Courses-with-Certificates.jpg" alt="My Courses">
        <h3>My Courses</h3>
        <p>Check out the latest courses scheduled to start soon. Don’t miss out on your next learning opportunity!</p>
        <a href="mycourse.jsp">View Courses</a>
    </div>

    <!-- Assignments Card -->
    <div class="card">
        <img src="https://www.modeloe.com/Content/UploadImage/Template/10312/d6310561-0baa-4ed1-9d9e-8417f750e8ea_img.png" alt="Assignments">
        <h3>Assignments</h3>
        <p>Stay on top of your assignments and track upcoming deadlines to keep your studies on track.</p>
        <a href="Assignments.jsp">View Assignments</a>
    </div>

    <!-- Progress and Performance Card -->
    <div class="card">
        <img src="https://img.freepik.com/premium-vector/people-study-online-courses-with-books-laptop-online-library-education-center-remote-school-college-university-cartoon-adults-reading-decent-vector-scene_543062-5400.jpg" alt="Your Progress">
        <h3>Your Progress</h3>
        <p>Review your progress across various courses and get insights on how to improve.</p>
        <a href="materials.jsp">View Progress</a>
    </div>
</div>

</body>
</html>
