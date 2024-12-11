<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Course Materials</title>
</head>
<body>
    <h1>Download Course Materials</h1>

    <div>
        <h3>Available Materials:</h3>
        <ul>
            <c:forEach var="material" items="${materials}">
                <li>
                    <a href="/downloadmaterial?filename=${material.filename}">${material.filename}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
