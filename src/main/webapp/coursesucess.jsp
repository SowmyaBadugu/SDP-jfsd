<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Course Success</title>
</head>
<body>
    <h2>Course Added Successfully!</h2>
    <p>${message}</p> <!-- Display the success message from the controller -->
    <a href="addcourse">Add Another Course</a> | <a href="facultyhome">Back to faculty Home</a>
</body>
</html>