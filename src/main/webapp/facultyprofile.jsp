<%@page import="com.klef.jfsd.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Faculty f = (Faculty)session.getAttribute("faculty");
if(f == null) {
    response.sendRedirect("facultysessionfail");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
<style>
    /* Basic page styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #e9ecef;
        margin: 0;
        padding: 0;
        display: flex;
        min-height: 100vh;
    }
    
    /* Navbar styling */
    .navbar {
        width: 200px;
        background-color: #343a40;
        color: #fff;
        padding: 20px;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    
    .navbar a {
        color: #fff;
        text-decoration: none;
        margin: 10px 0;
    }

    /* Content styling */
    .content {
        flex: 1;
        padding: 20px;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    
    .content-inner {
        width: 50%;
        text-align: center;
        background-color: #f0f0f0;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
</style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <%@include file="facultynavbar.jsp" %>
</div>

<!-- Main Content -->
<div class="content">
    <div class="content-inner">
        <h2>Welcome, <%=f.getName()%>!</h2>
        <p>ID: <%=f.getId()%></p>
        <p>Gender: <%=f.getGender()%></p>
        <p>Date of Birth: <%=f.getDateOfBirth()%></p>
        <p>Department: <%=f.getDepartment()%></p>
        <p>Email: <%=f.getEmail()%></p>
        <p>Location: <%=f.getLocation()%></p>
        <p>Contact: <%=f.getContact()%></p>
        <p>Qualification: <%=f.getQualification()%></p>
    </div>
</div>

</body>
</html>