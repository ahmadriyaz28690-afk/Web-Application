package com.servlet.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class EmployeeDao {
	
	private static final String url="jdbc:mysql://localhost:3306/employeesDB";
	private static final String username="root";
	private static final String password="chaudhary786";
	public static Connection createDBConnection1()
	{
		Connection connection=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			
			 connection=DriverManager.getConnection(url, username, password);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	}

 