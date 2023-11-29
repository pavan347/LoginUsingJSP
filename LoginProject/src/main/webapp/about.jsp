<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
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
    <h1>About ${name}</h1>
  </header>

  <nav>
    <div class="menu-icon">&#9776;</div>
    <a href="welcome.jsp">Welcome</a>
    <a href="about.jsp">About Us</a>
    <a href="projects.jsp">projects</a>
    <a href="contact.jsp">Contact Us</a>
  </nav>

  <!-- About Us Page -->
  <div class="container">
    <div class="about-content">
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod leo in justo ultricies aliquet. Integer consectetur, justo ac tincidunt euismod, metus ligula convallis sem, id feugiat neque dolor eu libero.</p>
      <p>Phasellus ullamcorper, arcu a ultricies consectetur, odio velit auctor augue, eu vehicula velit nulla sit amet orci. Integer efficitur sapien ac nisi eleifend fringilla.</p>
      <p>Curabitur bibendum justo eu diam malesuada, a rhoncus velit luctus. Aliquam nec lacus eget dui ultricies sodales. Ut quis justo ac quam fermentum tincidunt. Proin non metus a velit rhoncus egestas.</p>
      <p>Quisque vel libero non tortor scelerisque scelerisque ac id libero. Praesent convallis libero eget ligula dictum, vel luctus risus bibendum.</p>
    </div>
    <div>
      <form action="logout" method="post">
        <button type="submit">Logout</button>
      </form>
    </div>
  </div>
  <script src="javascript/websiteJS.js"></script>
</body>
</html>