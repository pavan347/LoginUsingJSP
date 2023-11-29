package com.filters;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;

import com.database.CheckEmail;

/**
 * Servlet Filter implementation class signupFilter
 */
//@WebFilter("/signup")
public class SignupFilter extends HttpFilter implements Filter {
       
   
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		String uname = request.getParameter("username");
		String email = request.getParameter("email");
		String password1 = request.getParameter("password");
		String password2 = request.getParameter("confirmPassword");
		
		PrintWriter out = response.getWriter();
		
		CheckEmail checkEmailID = new CheckEmail();
		if(uname != null && email != null && password1 != null && password2 != null) {
			if(!checkEmailID.checkEmail(email)) {
				if(password1.equals(password2)) {
					chain.doFilter(request, response);
				}else {
					out.println("The passwords do not match");
				}
			}else {
				out.println("The email id already exists");
			}
		}else {
			out.println("Input fields cannot be empty");
		}
		
	}

	

}
