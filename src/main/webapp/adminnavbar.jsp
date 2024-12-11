<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
  margin: 0;
  font-family: Arial, sans-serif;
   
  background-size: cover; /* Ensures the image covers the entire page */
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed; /* Fixes the background during scrolling */
  color: #ffffff; /* White text for contrast */
}

/* Left-side navbar with purple and pink theme */
.topbar {
  height: 100%;
  width: 200px; /* Set fixed width for the left sidebar */
  background-color: black; /* Purple background */
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
  width: 40%; /* Make logo smaller */
  max-width: 80px; /* Restrict max logo width */
  margin-bottom: 20px; /* Space between logo and first link */
  padding-left: 20px; /* Add some padding to the left */
}

.topbar a {
  color: #ffffff;
  padding: 12px 20px;
  text-decoration: none;
  font-size: 18px;
  width: 100%; /* Make links take up the full width */
  transition: color 0.2s ease, background-color 0.2s ease;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2); /* Add separator between links */
}

.topbar a:hover {
  background-color: black; /* Pink hover effect */
  color: #ffffff;
}

/* Content styling */
.content {
  margin-left: 250px; /* Offset content to avoid overlap with navbar */
  padding: 20px;
  text-align: center;
}

/* Responsive Design */
@media screen and (max-width: 700px) {
  .topbar {
    width: 80%;
    height: auto;
    flex-direction: row; /* Switch to horizontal layout on smaller screens */
    align-items: center;
    padding-top: 10px;
  }

  .topbar img {
    margin: 0 10px;
    width: 50px;
    height: 50px;
  }

  .topbar a {
    padding: 10px;
    font-size: 16px;
    border-bottom: none;
  }
}

@media screen and (max-width: 400px) {
  .topbar a {
    padding: 8px;
    font-size: 14px;
  }
}
</style>
</head>
<body>

<div class="topbar">
  <img src="https://as2.ftcdn.net/v2/jpg/04/14/58/63/1000_F_414586354_SOPKjxfnQdjSlok1YPUqs0l6OTzMpP57.jpg" alt="Logo" />
  <a href="adminhome">Home</a>
  <a href="studentreg">Add Student</a>
  <a href="addfaculty">Add Faculty</a>
  <a href="viewallstudents">View All Students</a>
  <a href="viewallfaculty">View All Faculty</a>
  <a href="deletefaculty">Delete Faculty</a>
  <a href="deletestudent">Delete Students</a>
  <a href="adminlogout">Logout</a>
</div>

<div class="content">
  <!-- Your page content goes here -->
</div>

</body>
</html>
