<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Material</title>
</head>
<body>
    <h1>Upload Course Material</h1>
    
    <form action="/uploadmaterial" method="post" enctype="multipart/form-data">
        <label for="material">Select Material:</label>
        <input type="file" id="material" name="material" required>
        <button type="submit">Upload</button>
    </form>

    <c:if test="${not empty message}">
        <p>${message}</p>
    </c:if>
</body>
</html>
