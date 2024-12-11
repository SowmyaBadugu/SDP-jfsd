<%@page import="com.klef.jfsd.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Faculty f = (Faculty)session.getAttribute("faculty");
    if(f == null) {
        response.sendRedirect("facultysessionfail");
        return;
    }
%>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Faculty</title>
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
  <%@include file="facultynavbar.jsp" %>
    <h3><u>Update Faculty</u></h3>
    <div class="form-container">
        <form method="post" action="updatefacultyinfo">
            <table>
                <tr>
                    <td><label for="fid">ID</label></td>
                    <td><input type="number" id="fid" name="fid" value="<%=f.getId()%>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="fname">Enter Name</label></td>
                    <td><input type="text" id="fname" name="fname" value="<%=f.getName()%>" required /></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="fgender" value="MALE" <% if(f.getGender().equals("MALE")) out.print("checked"); %> required />
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="fgender" value="FEMALE" <% if(f.getGender().equals("FEMALE")) out.print("checked"); %> required />
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="fgender" value="OTHERS" <% if(f.getGender().equals("OTHERS")) out.print("checked"); %> required />
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="fdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="fdob" name="fdob" value="<%=f.getDateOfBirth()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="fdept">Select Department</label></td>
                    <td>
                        <select id="fdept" name="fdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE" <% if(f.getDepartment().equals("CSE")) out.print("selected"); %>>CSE</option>
                            <option value="AIDS" <% if(f.getDepartment().equals("AIDS")) out.print("selected"); %>>AIDS</option>
                            <option value="CSIT" <% if(f.getDepartment().equals("CSIT")) out.print("selected"); %>>CSIT</option>
                            <option value="EEE" <% if(f.getDepartment().equals("EEE")) out.print("selected"); %>>EEE</option>
                            <option value="ECE" <% if(f.getDepartment().equals("ECE")) out.print("selected"); %>>ECE</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="flocation">Enter Location</label></td>
                    <td><input type="text" id="flocation" name="flocation" value="<%=f.getLocation()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="femail">Enter Email ID</label></td>
                    <td><input type="email" id="femail" name="femail" value="<%=f.getEmail()%>" readonly required /></td>
                </tr>
                <tr>
                    <td><label for="fpwd">Enter Password</label></td>
                    <td><input type="password" id="fpwd" name="fpwd" required /></td>
                </tr>
                <tr>
                    <td><label for="fcontact">Enter Contact</label></td>
                    <td><input type="number" id="fcontact" name="fcontact" value="<%=f.getContact()%>" required /></td>
                </tr>
                <tr>
                    <td><label for="fqualification">Enter Qualification</label></td>
                    <td><input type="text" id="fqualification" name="fqualification" value="<%=f.getQualification()%>" required /></td>
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