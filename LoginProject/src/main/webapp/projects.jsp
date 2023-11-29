<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projects</title>
 <link rel="stylesheet" href="css/websiteStyles.css">
</head>
<body>

	<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); // Http 1.1
	
	response.setHeader("Pragma","no-cache");// Http 1.0
	
	response.setHeader("Expires","0"); // Proxies
	
	if(session.getAttribute("name")==null){
		response.sendRedirect("index.jsp");
	}
	%>

	<header>
    <h1>Projects by ${name}</h1>
  </header>

  <nav>
    <div class="menu-icon">&#9776;</div>
    <a href="welcome.jsp">Welcome</a>
    <a href="about.jsp">About Us</a>
    <a href="projects.jsp">projects</a>
    <a href="contact.jsp">Contact Us</a>
  </nav>

  <div class="projects-container">
 

    <div class="project-description">
      <p>Explore the various projects we've worked on. Click on the arrows to see more details about each category.</p>
    </div>

    <ul class="project-tree">
      <li class="project-category">
        Web Development
        
        <ul class="project-info">
          <li class="project-name" onclick="toggleDescription(this)">Student Information Management System<span >⬇</span></li>
          <p class="project-description">A comprehensive system for managing student information, including details such as name, roll number, courses, and grades.</p>
          <li class="project-name" onclick="toggleDescription(this)">Login and Signup Page using JSP<span >⬇</span></li>
          <p class="project-description">Implementation of a login and signup system using JavaServer Pages (JSP) for dynamic web page generation.</p>
        </ul>
      </li>

      <li class="project-category">
        Design
        
        <ul class="project-info">
          <li class="project-name" onclick="toggleDescription(this)">Beautiful Home Spaces<span>⬇</span></li>
          <p class="project-description">Showcasing beautifully designed home spaces with images, descriptions, and details about interior design and architecture.</p>
        </ul>
      </li>

      <li class="project-category">
        Software Development
        
        <ul class="project-info">
          <li class="project-name" onclick="toggleDescription(this)">Attendance Management System<span >⬇</span></li>
          <p class="project-description">Efficient system for managing and tracking attendance records, including features for recording attendance, generating reports, and tracking student attendance over time.</p>
        </ul>
      </li>
    </ul>
    <div>
      <form action="logout" method="post">
        <button type="submit">Logout</button>
      </form>
    </div>
  </div>

  <script src="javascript/websiteJS.js"></script>
</body>
</html>