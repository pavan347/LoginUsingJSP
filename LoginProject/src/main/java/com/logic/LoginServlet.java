package com.logic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.database.UserDAOImplementation;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("username");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		UserDAOImplementation userDao = new UserDAOImplementation();
		if(userDao.checkLogin(email, password)) {
			String name = userDao.getName(email);
			
			System.out.println(name);
			
			
			if(session.getAttribute("loginError")!=null) {
				session.removeAttribute("loginError");
			}
			
			session.setAttribute("name", name);
			response.sendRedirect("welcome.jsp");
			
			
			
		}else {
			
			session.setAttribute("loginError","Username or password is wrong. Please try again...");
			response.sendRedirect("index.jsp");
		}
		
	}

}
