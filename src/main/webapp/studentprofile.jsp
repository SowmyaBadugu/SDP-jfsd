<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Student Home</title>
<style>
    /* Reset margin and padding */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Basic page styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f3f4f6;
        display: flex;
        min-height: 100vh;
    }

    /* Navbar styling */
    .navbar {
        width: 220px;
        background-color: #1d3557;
        color: #f1faee;
        padding: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        color: #a8dadc;
        text-decoration: none;
        margin: 12px 0;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    .navbar a:hover {
        color: #f1faee;
    }

    /* Content styling */
    .content {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 40px;
    }

    .content-inner {
        max-width: 600px;
        width: 100%;
        background-color: black;//background box
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
        text-align: center;
    }

    /* Header and paragraph styling */
    h2 {
        color: white;//heading
        font-size: 28px;
        margin-bottom: 20px;
    }

    p {
        color: white;//paragraph
        font-size: 18px;
        margin-bottom: 10px;
    }

    /* Additional styling for data labels */
    p span {
        font-weight: bold;
        color: #1d3557;
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
    <div class="content-inner">
        <h2>Welcome, <%=s.getName()%>!</h2>
        <p>ID: <%=s.getId()%></p>
        <p>Gender: <%=s.getGender()%></p>
        <p>Date of Birth: <%=s.getDateOfBirth()%></p>
        <p>Department: <%=s.getDepartment()%></p>
        <p>Email: <%=s.getEmail()%></p>
        <p>Location: <%=s.getLocation()%></p>
        <p>Contact: <%=s.getContact()%></p>
    </div>
</div>

</body>
</html>
