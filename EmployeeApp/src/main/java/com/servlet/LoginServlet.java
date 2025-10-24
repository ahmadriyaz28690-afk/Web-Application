package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.servlet.dao.EmployeeDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		Connection con =EmployeeDao.createDBConnection1();
		Employee employee = new Employee();
		ResultSet rs=null;

		try {
		PreparedStatement pst= con.prepareStatement("Select * from employees1 where email=? and password=?");
		 
		pst.setString (1, email);
		pst.setString(2, password);
	    rs= pst.executeQuery();
	    		
		if(rs.next())
		{
			
			employee.setId(rs.getString("id"));
			employee.setName(rs.getString("name"));
			employee.setEmail(rs.getString("email"));
			employee.setPassword(rs.getString("password"));
			employee.setGender(rs.getString("gender"));
			employee.setCity(rs.getString("city"));
		
		req.setAttribute("employees1", employee);
		
		req.setAttribute("Name", rs.getString("name"));
		
		req.getRequestDispatcher("displayemp.jsp").forward(req, resp);
		}
		else
		{
			req.setAttribute("msg", "Invalid Email or Password");
			req.getRequestDispatcher("Login.jsp").include(req,resp);
		}

		}catch(SQLException e) {
			
			e.printStackTrace();
			
		}
				
	}
	
}
