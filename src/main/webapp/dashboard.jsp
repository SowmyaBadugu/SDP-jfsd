<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
if(s == null) {
    response.sendRedirect("studentsessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Dashboard</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
    /* Basic styling */
 body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #6a0dad, #9b4d96); /* Dark purple to light purple-blue gradient */
    margin: 0;
    padding: 0;
    color: #333;
    display: flex;
}
 

    /* Navbar styling */
    .navbar {
        width: 220px;
        background-color: #1d3557;
        color: #f1faee;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        height: 100vh;
        position: fixed;
        top: 0;
        left: 0;
    }

    /* Content container */
    .content {
        margin-left: 240px; /* Space for the navbar */
        width: calc(100% - 240px);
        padding: 20px;
    }

    /* Dashboard container */
    .dashboard {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
        gap: 30px;
        margin-top: 50px;
    }

    /* Card styling */
    .card {
        background: #ffffff; /* Card white background */
        border-radius: 15px;
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        padding: 25px;
        text-align: center;
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: translateY(-10px); /* Hover effect for cards */
    }

    .card h2 {
        font-size: 20px;
        margin-bottom: 20px;
        color: #1d3557;
    }

    /* Chart canvas */
    canvas {
        width: 100% !important;
        height: 200px !important;
    }

    /* Rating display */
    .rating {
        font-size: 24px;
        color: #e76f51;
    }

    /* Course Details Styling */
    .course-list {
        text-align: left;
    }

    .course-list p {
        margin: 10px 0;
        font-weight: bold;
    }

    /* Gradient hover for cards */
    .card-1 {
        background: linear-gradient(135deg, #f1faee, #e63946);
    }

    .card-2 {
        background: linear-gradient(135deg, #457b9d, #a8dadc);
    }

    .card-3 {
        background: linear-gradient(135deg, #2a9d8f, #e9c46a);
    }

    .card-4 {
        background: linear-gradient(135deg, #f4a261, #e63946);
    }
</style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>

<!-- Main Content -->
<div class="content">
    <div class="dashboard">
        <!-- Course Completion Pie Chart -->
        <div class="card card-1">
            <h2>Course Completion</h2>
            <canvas id="courseCompletionChart"></canvas>
        </div>

        <!-- Materials & Assignments Bar Chart -->
        <div class="card card-2">
            <h2>Materials & Assignments</h2>
            <canvas id="materialsAssignmentsChart"></canvas>
        </div>

        <!-- Student Ratings -->
        <div class="card card-3">
            <h2>Student Rating</h2>
            <p class="rating">4.5 / 5.0</p>
        </div>

        <!-- Enrolled Courses -->
        <div class="card card-4">
            <h2>Enrolled Courses</h2>
            <div class="course-list">
                <p><strong>Mathematics 101</strong> - March 2023 to May 2023</p>
                <p><strong>Japanese Language</strong> - March 2023 to June 2023</p>
                <p><strong>English Grammar</strong> - February 2023 to April 2023</p>
            </div>
        </div>

        <!-- Upcoming Deadlines -->
        <div class="card card-1">
            <h2>Upcoming Deadlines</h2>
            <div class="course-list">
                <p><strong>JFSD Assignment</strong> - Due: 25th Nov 2024</p>
                <p><strong>JAVA Language Test</strong> - Due: 28th Nov 2024</p>
                <p><strong>English Grammar Project</strong> - Due: 1st Dec 2024</p>
            </div>
        </div>

        <!-- Course Progress -->
        <div class="card card-2">
            <h2>Course Progress</h2>
            <canvas id="courseProgressChart"></canvas>
        </div>

        <!-- Assignments Pending -->
        <div class="card card-3">
            <h2>Assignments Pending</h2>
            <p>Pending Assignments: 3</p>
        </div>

    </div>
</div>

<script>
    // Course Completion Pie Chart
    const courseCompletionChart = new Chart(document.getElementById('courseCompletionChart'), {
        type: 'pie',
        data: {
            labels: ['Completed', 'In Progress', 'Not Started'],
            datasets: [{
                data: [60, 25, 15],
                backgroundColor: ['#2a9d8f', '#e9c46a', '#f4a261'],
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'bottom',
                },
            }
        }
    });

    // Materials & Assignments Bar Chart
    const materialsAssignmentsChart = new Chart(document.getElementById('materialsAssignmentsChart'), {
        type: 'bar',
        data: {
            labels: ['Materials Accessed', 'Assignments Completed', 'Pending Assignments'],
            datasets: [{
                label: 'Count',
                data: [40, 25, 5],
                backgroundColor: ['#457b9d', '#a8dadc', '#e63946'],
            }]
        },
        options: {
            responsive: true,
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Course Progress Line Chart (example)
    const courseProgressChart = new Chart(document.getElementById('courseProgressChart'), {
        type: 'line',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [{
                label: 'Course Progress',
                data: [20, 30, 50, 70, 90, 100],
                borderColor: '#457b9d',
                fill: false,
                tension: 0.1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top',
                },
            },
            scales: {
                x: {
                    title: {
                        display: true,
                        text: 'Months'
                    }
                },
                y: {
                    title: {
                        display: true,
                        text: 'Progress (%)'
                    },
                    beginAtZero: true
                }
            }
        }
    });
</script>

</body>
</html>
