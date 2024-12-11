<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Faculty</title>
    <style>
        body {
            margin: 0;
            padding-top: 60px; /* Adjust this padding based on the navbar height */
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h3 {
            text-align: center;
            color: #ff4d4d;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #000;
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ff4d4d;
        }

        th {
            background-color: #ff4d4d;
        }

        tr:nth-child(even) {
            background-color: #333;
        }

        tr:hover {
            background-color: #555;
        }

        /* Navbar styling if needed */
        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <h3>View All Faculty</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT</th>
        </tr>
        <c:forEach items="${facultylist}" var="f">
            <tr>
                <td><c:out value="${f.id}"/></td>
                <td><c:out value="${f.name}"/></td>
                <td><c:out value="${f.gender}"/></td>
                <td><c:out value="${f.dateofbirth}"/></td>
                <td><c:out value="${f.department}"/></td>
                <td><c:out value="${f.email}"/></td>
                <td><c:out value="${f.location}"/></td>
                <td><c:out value="${f.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>