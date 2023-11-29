<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp</title>
 <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
	<div class="container" id="signup-container">
    <h1>Create an Account</h1>
    <form id="form" action="signup" method="post">
      <div class="input-container">
        <input type="text" id="username" name="username" required>
        <label class="input-label" for="username">Name:</label>
      </div>

      <div class="input-container">
        <input type="email" id="email" name="email" required>
        <label class="input-label" for="email">Email:</label>
      </div>

      <div class="input-container">
        <input type="password" id="password" name="password" required>
        <label class="input-label" for="password">Password:</label>
      </div>

      <div class="input-container">
        <input type="password" id="confirmPassword" name="confirmPassword" required>
        <label class="input-label" for="confirmPassword">Confirm Password:</label>
      </div>

      <div class="checkbox-container">
        <input type="checkbox" id="agreeTerms" name="agreeTerms" required>
        <label for="agreeTerms">
          I agree to the <a href="terms.html" target="_blank">terms and conditions</a>
        </label>
      </div>

      <button type="submit" >Create Account</button>
      <div class="link">
        <p>Already have an account? <a href="index.jsp">Login</a>.</p>
      </div>
      <div id="errorMessage" class="error-message">
      
      <%
      if(session.getAttribute("passwordError")!=null) {
			out.println("Passwords do not match");
			
		}
		if(session.getAttribute("emailError")!= null) {
			out.println("Email already exists or enter correct email");
			
		}
		if(session.getAttribute("signupError")!=null){
			out.println("Sorry try again...");
					
		}
      %>
      
      </div>
     	<div class = "link"><p>After creating account you will be redirected to Login page</p></div>
    </form>
  </div>

  <div class="modal" id="myModal">
    <div class="modal-content">
      <button onclick="hideModal()">X</button>
      <p>Account created successfully.</p>
    </div>
  </div>
 
</body>
</html>