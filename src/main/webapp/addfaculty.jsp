<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Registration</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        /* Navbar styling */
        .navbar {
            background-color: #343a40;
            padding: 15px 20px;
            text-align: center;
            color: white;
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            margin: 0 10px;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #007bff;
            border-radius: 5px;
        }

        /* Adjusting the page content to avoid navbar overlap */
        .content {
            margin-top: 80px;
            padding: 20px;
        }

        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background-color: #000;
            color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            width: 400px;
            margin: 20px auto;
            text-align: left;
        }

        h3 {
            color: #ff4d4d;
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            margin-top: 10px;
            display: block;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        input[type="number"],
        select {
            width: 90%;
            padding: 10px;
            margin: 10px auto;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin: 0 5px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #ff4d4d;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #cc0000;
        }
    </style>
</head>
<body>
 <%@ include file="adminnavbar.jsp" %>
    <!-- Navbar Section -->
    

    <!-- Faculty Registration Form -->
    <div class="content">
        <h3>Faculty Registration</h3>
        <div class="container">
            <form method="post" action="insertfaculty">
                <label>Enter Name</label>
                <input type="text" name="fname" required />

                <label>Enter Faculty ID</label>
                <input type="text" name="fid" required />

                <label>Select Gender</label>
                <input type="radio" id="male" name="fgender" value="MALE" required />
                <label for="male">Male</label>
                <input type="radio" id="female" name="fgender" value="FEMALE" required />
                <label for="female">Female</label>
                <input type="radio" id="others" name="fgender" value="OTHERS" required />
                <label for="others">Others</label>

                <label for="fdob">Enter Date of Birth</label>
                <input type="date" id="fdob" name="fdob" required />

                <label for="fdept">Select Department</label>
                <select id="fdept" name="fdept" required>
                    <option value="">---Select---</option>
                    <option value="CSE">CSE</option>
                    <option value="AIDS">AIDS</option>
                    <option value="CSIT">CSIT</option>
                    <option value="EEE">EEE</option>
                    <option value="ECE">ECE</option>
                </select>

                <label for="femail">Enter Email ID</label>
                <input type="email" id="femail" name="femail" required />

                <label for="fpwd">Enter Password</label>
                <input type="password" id="fpwd" name="fpwd" required />

                <label for="flocation">Enter Location</label>
                <input type="text" id="flocation" name="flocation" required />

                <label for="fcontact">Enter Contact</label>
                <input type="number" id="fcontact" name="fcontact" required />

                <label for="fqualification">Select Qualification</label>
                <select id="fqualification" name="fqualification" required>
                    <option value="">---Select---</option>
                    <option value="PhD">PhD</option>
                    <option value="Masters">Masters</option>
                    <option value="Bachelors">Bachelors</option>
                </select>

                <input type="submit" value="Register" />
                <input type="reset" value="Clear" />
            </form>
        </div>
    </div>
</body>
</html>
