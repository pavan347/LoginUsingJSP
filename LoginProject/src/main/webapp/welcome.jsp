<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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
    <h1>Welcome ${name}</h1>
  </header>

  <nav>
    <div class="menu-icon">&#9776;</div>
    <a href="welcome.jsp">Welcome</a>
    <a href="about.jsp">About Us</a>
    <a href="projects.jsp">projects</a>
    <a href="contact.jsp">Contact Us</a>
  </nav>

  <!-- Welcome Page -->
  <div class="container">
    <p>This is the welcome page. Customize this content to greet your visitors.</p>
    <div>
      <form action="logout" method="post">
        <button type="submit">Logout</button>
      </form>
    </div>
  </div>
  

	<script src="javascript/websiteJS.js"></script>
</body>
</html>