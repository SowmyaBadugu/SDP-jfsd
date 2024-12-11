<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Faculty</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background for contrast */
        }

        h3 {
            text-align: center; /* Center the heading */
            color: #ff4d4d; /* Red color for the heading */
            margin-bottom: 20px; /* Space below the heading */
        }

        table {
            width: 80%; /* Table width */
            margin: 20px auto; /* Center the table */
            border-collapse: collapse; /* Merge table borders */
            background-color: #000; /* Black background for table */
            color: #fff; /* White text for table */
            border-radius: 10px; /* Rounded corners for table */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); /* Shadow for depth */
        }

        th, td {
            padding: 15px; /* Padding for table cells */
            text-align: center; /* Center text in cells */
            border: 1px solid #ff4d4d; /* Red border for cells */
        }

        th {
            background-color: #ff4d4d; /* Red background for header */
        }

        tr:nth-child(even) {
            background-color: #333; /* Dark background for even rows */
        }

        tr:hover {
            background-color: #555; /* Highlight row on hover */
        }

        a {
            color: #ff4d4d; /* Red color for links */
            text-decoration: none; /* Remove underline */
            padding: 5px 10px; /* Padding for links */
            border: 1px solid #ff4d4d; /* Red border for links */
            border-radius: 5px; /* Rounded corners for links */
        }

        a:hover {
            background-color: #ff4d4d; /* Red background on hover */
            color: #fff; /* White text on hover */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %> <!-- No changes to navbar -->
    <h3><u>Delete Faculty</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>QUALIFICATION</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${facultyList}" var="f">
            <tr>
                <td><c:out value="${f.id}"/></td>
                <td><c:out value="${f.name}"/></td>
                <td><c:out value="${f.gender}"/></td>
                <td><c:out value="${f.dateOfBirth}"/></td>
                <td><c:out value="${f.department}"/></td>
                <td><c:out value="${f.location}"/></td>
                <td><c:out value="${f.email}"/></td>
                <td><c:out value="${f.contact}"/></td>
                <td><c:out value="${f.qualification}"/></td>
                <td>
                    <a href="<c:url value='deletefacultymember?id=${f.id}' />">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
