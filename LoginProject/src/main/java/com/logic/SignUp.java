package com.logic;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.CheckEmail;
import com.database.UserDAOImplementation;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/signup")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String EMAIL_REGEX =
            "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";

    private static final Pattern pattern = Pattern.compile(EMAIL_REGEX);
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("username");
		String email = request.getParameter("email");
		String password1 = request.getParameter("password");
		String password2 = request.getParameter("confirmPassword");
		
		HttpSession session = request.getSession();
		
		CheckEmail checkEmailID = new CheckEmail();
		
		if(name != null && email != null && password1 != null && password2 != null) {
			if(!checkEmailID.checkEmail(email) && isValidEmail(email)) {
				if(password1.equals(password2)) {
					
					
					UserDAOImplementation userDao = new UserDAOImplementation();
					if(userDao.createUser(name, email, password1)) {
						removeSessionAttributes(request, response);
						response.sendRedirect("index.jsp");
					}else {
						removeSessionAttributes(request, response);
						session.setAttribute("signupError","Sorry try again...");
						response.sendRedirect("signup.jsp");
					}
					
				}else {
					removeSessionAttributes(request, response);
					session.setAttribute("passwordError","Passwords do not match");
					response.sendRedirect("signup.jsp");
				}
			}else {
				removeSessionAttributes(request, response); 
				session.setAttribute("emailError","Email already exists or Enter correct email");
				response.sendRedirect("signup.jsp");
			}
		}
		
		
		
	}
	
	public static boolean isValidEmail(String email) {
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
	
	public void removeSessionAttributes(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("passwordError")!=null) {
			session.removeAttribute("passwordError");
		}
		if(session.getAttribute("emailError")!= null) {
			session.removeAttribute("emailError");
		}
		
		if(session.getAttribute("signupError")!= null) {
			session.removeAttribute("signupError");
		}
		
	}

}
