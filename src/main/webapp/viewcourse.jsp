<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Courses</title>
</head>
<body>
    <h2>Available Courses</h2>

    <c:if test="${not empty courseList}">
        <table border="1">
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Description</th>
                <th>Price</th>
                <th>Image</th>
                <th>Action</th>
            </tr>
            <c:forEach var="course" items="${courseList}">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.courseName}</td> <!-- Updated to match the model -->
                    <td>${course.courseDescription}</td> <!-- Updated to match the model -->
                    <td>${course.coursePrice}</td>
                    <td>
                        <!-- Display course image if available -->
                        
                    </td>
                    <td>
                        <form action="registerCourse" method="post">
                            <input type="hidden" name="courseId" value="${course.id}" />
                            <input type="hidden" name="studentId" value="${student.id}" /> <!-- Ensure student ID is passed -->
                            <input type="submit" value="Register" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    
    <c:if test="${empty courseList}">
        <p>No courses available for registration.</p>
    </c:if>
    <a href="studenthome">Back to Student Home</a>
</body>
</html>
