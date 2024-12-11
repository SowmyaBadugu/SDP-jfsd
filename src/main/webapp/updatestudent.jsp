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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Student</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            background-color: black;
            color: #fff;
        }
        h3 {
            color: #ff4d4d;
            text-align: center;
        }
        .form-container {
            background-color: #1a1a1a;
            padding: 20px;
            border-radius: 8px;
            max-width: 600px;
            margin: 30px auto;
            border: 1px solid #ff4d4d;
        }
        label {
            color: #ff4d4d;
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            background-color: #333;
            color: #fff;
            border: 1px solid #ff4d4d;
            border-radius: 4px;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        .button-container {
            text-align: center;
        }
        input[type="submit"],
        input[type="reset"] {
            background-color: #ff4d4d;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px 5px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #e60000;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
    </style>
</head>
<body>
  <%@include file="studentnavbar.jsp" %>
    <h3><u>Update Student</u></h3>
    <div class="form-container">
        <form method="post" action="update">
            <table>
                <tr>
                    <td><label for="sid">ID</label></td>
                    <td><input type="number" id="sid" name="sid" value="<%=s.getId()%>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" value="<%=s.getName()%>" required /></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required />
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required />
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required />
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="sdob" name="sdob" required /></td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="AIDS">AIDS</option>
                            <option value="CSIT">CSIT</option>
                            <option value="EEE">EEE</option>
                            <option value="ECE">ECE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" value="<%=s.getLocation()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" value="<%=s.getEmail() %>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required /></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" value="<%=s.getContact()%>" required /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
