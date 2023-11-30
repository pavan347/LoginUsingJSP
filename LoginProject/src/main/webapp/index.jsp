<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="css/styles.css" />
</head>
<body>
	 <div class="container">
    <h1>Login</h1>
    <form id="form" action="Login" method="post">
      <div class="input-container">
        <input class="input"   type="text" id="username" name="username" required>
        <label for="input1" class="input-label" for="username">Username(Email)</label>
      </div>

      <div class="input-container">
        <input class="input"  type="password" id="password" name="password" required>
        <label class="input-label" for="password">Password</label>
      </div>

      <button type="submit">Login</button>
      
      <div id="errorMessage" class="error-message">
      <%
      if(session.getAttribute("loginError")!=null) {
			out.println("Username or password is wrong. Please try again...");
		}
      %>
      
      </div>
    </form>

    <div class="link">
      <p>Don't have an account? <a href="signup.jsp">Sign up here</a>.</p>
    </div>
    
  </div>

</body>
</html>