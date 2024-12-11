<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  color: #ffffff;
}

.topbar {
  height: 100%;
  width: 350px; /* Set fixed width for the left sidebar */
  background-color: red; /* Purple background */
  position: fixed;
  top: 0;
  left: 0;
  display: flex;
  flex-direction: column; /* Stack links vertically */
  align-items: flex-start;
  padding-top: 20px; /* Adds spacing from the top */
  z-index: 1000;
}

.topbar img {
  height: auto;
  width: 40%;
  max-width: 80px;
  margin-bottom: 20px;
  padding-left: 20px;
}

.topbar a {
  color: #ffffff;
  padding: 12px 20px;
  text-decoration: none;
  font-size: 18px;
  width: 100%;
  transition: color 0.2s ease, background-color 0.2s ease;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

.topbar a:hover {
  background-color: black;
  color: #ffffff;
}

/* Content styling */
.content {
  margin-left: 180px; /* Match the new sidebar width */
  padding: 20px;
  text-align: center;
}

/* Responsive Design */
@media screen and (max-width: 700px) {
  .topbar {
    width: 80%;
    height: auto;
    flex-direction: row;
    align-items: center;
    padding-top: 10px;
  }

  .content {
    margin-left: 0; /* No offset when sidebar is full width */
  }
}

@media screen and (max-width: 400px) {
  .topbar a {
    padding: 8px;
    font-size: 14px;
  }
}
        
        

        h3 {
            text-align: center;
            color: #ff4d4d;
            margin-bottom: 20px;
        }

        table {
            width: 60%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #000;
            color: #fff;
            border-radius: 5px;
            box-shadow: 0 4px 1px rgba(0, 0, 0, 0.3);
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
            width: 70%;
            z-index: 1000;
        }
       
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <h3>View All Students</h3>
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
        <c:forEach items="${stulist}" var="s">
            <tr>
                <td><c:out value="${s.id}"/></td>
                <td><c:out value="${s.name}"/></td>
                <td><c:out value="${s.gender}"/></td>
                <td><c:out value="${s.dateOfBirth}"/></td>
                <td><c:out value="${s.department}"/></td>
                <td><c:out value="${s.email}"/></td>
                <td><c:out value="${s.location}"/></td>
                <td><c:out value="${s.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
