package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.servlet.dao.EmployeeDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/save")
public class employeeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("employee.html").forward(req, resp);
    }
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
    
		resp.setContentType("text/html");
	
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		
	    if (id == null || id.isEmpty()) {
	        // Form not submitted yet, just display the HTML page
	        req.getRequestDispatcher("employee.html").forward(req, resp);
	        return;
	    }

		
		Connection con=EmployeeDao.createDBConnection1();
		
		try{
		PreparedStatement pst=con.prepareStatement("INSERT INTO employees1 (id, name, email, password, gender, city) VALUES (?, ?, ?, ?, ?, ?)"
				+ "");
		pst.setString(1,id);
		
		pst.setString(2,name);

		pst.setString(3,email);
		
        pst.setString(4,password);
        
        pst.setString(5,gender);
        
        pst.setString(6,city);
        
        int i=pst.executeUpdate();
        
        if(i>0)
        {
        	resp.getWriter().print("<h3 style='color:green;font-weight:800'>Employee Saved Success</h3>");
        	req.getRequestDispatcher("employee.html").include(req, resp);
        }
        else
        {
        	resp.getWriter().print("<h3 style='color:red;font-weight:800'>Employee Failled</h3>");
        	req.getRequestDispatcher("employee.html").include(req, resp);

        }
        
      }catch(Exception e) {
      	resp.getWriter().print("<h3 style='color:red;font-weight:800'>'"+e.getMessage()+"'</h3>");
      	req.getRequestDispatcher("employee.html").include(req, resp);

}
	}
}